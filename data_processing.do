insheet using "C:\Users\30675.ISBDOMAIN1\Dropbox\Sayali\ISB\A little something for myself\Ashoka\Nutrition full data.csv", comma
insheet using "C:\Users\Sau\Dropbox\Sayali\ISB\A little something for myself\Ashoka\Nutrition full data.csv", comma


gen Nutri_status_bmi = 0
replace Nutri_status_bmi = 1 if (womanbminutritionstatus=="Adequate")
replace Nutri_status_bmi = 2 if (womanbminutritionstatus=="Mildly Malnourished")
replace Nutri_status_bmi = 2 if (womanbminutritionstatus=="Moderately Malnourished")
replace Nutri_status_bmi = 2 if (womanbminutritionstatus=="Severely Malnourished")
drop if Nutri_status_bmi==0

label define Nutri_status_bmi 1 "Adequate" 2 "Under-nourished"
label values Nutri_status_bmi Nutri_status_bmi


gen Nutri_status_childheightforage = 0
replace Nutri_status_childheightforage = 1 if (childheightforagenutritionstatus=="Adequate")
replace Nutri_status_childheightforage = 2 if (childheightforagenutritionstatus=="Mildly Malnourished")
replace Nutri_status_childheightforage = 2 if (childheightforagenutritionstatus=="Moderately Malnourished")
replace Nutri_status_childheightforage = 2 if (childheightforagenutritionstatus=="Severely Malnourished")
drop if Nutri_status_childheightforage==0

label define Nutri_status_childheightforage 1 "Adequate" 2 "Under-nourished"
label values Nutri_status_childheightforage Nutri_status_childheightforage


/*
1 == Adequately nourished
2 == Undernourished
*/



/* ***WORK CATEGORIES*** */
/* Categorization 1
2 work categories; Livestock + and No livestock
*/

gen Work_category_1 = 0
replace Work_category_1 = 1 if (animalhusbandrypoultrygoatssheep=="NO")
replace Work_category_1 = 2 if (animalhusbandrypoultrygoatssheep=="YES")

ttest womanbmi, by(Work_category_1)
ttest childheight , by(Work_category_1)

/*
1 == No livestock
2 == Yes livestock
*/


		
/* Categorization 2
We  took 2 work categories; Casual labour only and Livestock +
*/

gen Work_category_2 = 0
replace Work_category_2 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO")
replace Work_category_2 = 2 if (animalhusbandrypoultrygoatssheep=="YES")

ttest womanbmi, by(Work_category_2)
ttest childheight , by(Work_category_2)

/*
1 == Casual labour only
2 == At least animal husbandry
*/



/*Categorization 3
We look at 2 categories; Livestock+ and No Livestock but with some source of income at least
*/

gen Work_category_3 = 0
replace Work_category_3 = 1 if (animalhusbandrypoultrygoatssheep=="YES")
replace Work_category_3 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO")

ttest womanbmi, by(Work_category_3)
ttest childheight , by(Work_category_3)

/*
1 == Livestock +
2 == No livestock but there exist at least one other source of income
*/



/*Categorization 4
We look at 2 categories; Cultivators only and Casual labour only
*/

gen Work_category_4 = 0
replace Work_category_4 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO")
replace Work_category_4 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO")

ttest womanbmi, by(Work_category_4)
ttest childheight , by(Work_category_4)

/*
1 == Cultivators only
2 == Casual labour only
*/



/*Categorization 5
We look at 2 categories; Cultivators only and Livestock+
*/

gen Work_category_5 = 0
replace Work_category_5 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO")
replace Work_category_5 = 2 if (animalhusbandrypoultrygoatssheep=="YES")

ttest womanbmi, by(Work_category_5)
ttest childheight , by(Work_category_5)

/*
1 == Cultivators only
2 == Livestock+
*/



/* Categorization 6
We  took 2 work categories; Casual labour only and Livestock only
*/

gen Work_category_6 = 0
replace Work_category_6 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO")
replace Work_category_6 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO")

/*
1 == Casual labour only
2 == Livestock only
*/




/* EDUCATION */

gen Education = 0
replace Education = 1 if (v33=="NOne or can’t read")
replace Education = 2 if (v33=="<5")
replace Education = 3 if (v33=="7-May")
replace Education = 3 if (v33=="9-Aug")
replace Education = 4 if (v33=="10+")

/*
1 == Illiterate
2 == Less than 5th standard
3 == 6th-9th standard
4 == 10th standard or more
*/



/* Education CATEGORY #1*/
gen Work_education_11 = 0
replace Work_education_11 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Education==1)
replace Work_education_11 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==1)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_education_12 = 0
replace Work_education_12 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Education==1)
replace Work_education_12 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==1)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_education_13 = 0
replace Work_education_13 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Education==1)
replace Work_education_13 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==1)
replace Work_education_13 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==1)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Education CATEGORY #2*/
gen Work_education_21 = 0
replace Work_education_21 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Education==2)
replace Work_education_21 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==2)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_education_22 = 0
replace Work_education_22 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Education==2)
replace Work_education_22 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==2)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_education_23 = 0
replace Work_education_23 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Education==2)
replace Work_education_23 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==2)
replace Work_education_23 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==2)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Education CATEGORY #3*/
gen Work_education_31 = 0
replace Work_education_31 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Education==3)
replace Work_education_31 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==3)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_education_32 = 0
replace Work_education_32 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Education==3)
replace Work_education_32 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==3)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_education_33 = 0
replace Work_education_33 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Education==3)
replace Work_education_33 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==3)
replace Work_education_33 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==3)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Education CATEGORY #4*/
gen Work_education_41 = 0
replace Work_education_41 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Education==4)
replace Work_education_41 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==4)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_education_42 = 0
replace Work_education_42 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Education==4)
replace Work_education_42 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Education==4)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_education_43 = 0
replace Work_education_43 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Education==4)
replace Work_education_43 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==4)
replace Work_education_43 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Education==4)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/






/* Religion and Caste can be processed internally, within R */

/*Caste
*/

/* Caste CATEGORY #1*/
gen Work_caste_11 = 0
replace Work_caste_11 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & v29=="General")
replace Work_caste_11 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="General")
/*
1 == No livestock
2 == Livestock+
*/

gen Work_caste_12 = 0
replace Work_caste_12 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & v29=="General")
replace Work_caste_12 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="General")
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_caste_13 = 0
replace Work_caste_13 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="General")
replace Work_caste_13 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="General")
replace Work_caste_13 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="General")
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Caste CATEGORY #2*/
gen Work_caste_21 = 0
replace Work_caste_21 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & v29=="OBC")
replace Work_caste_21 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="OBC")
/*
1 == No livestock
2 == Livestock+
*/

gen Work_caste_22 = 0
replace Work_caste_22 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & v29=="OBC")
replace Work_caste_22 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="OBC")
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_caste_23 = 0
replace Work_caste_23 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="OBC")
replace Work_caste_23 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="OBC")
replace Work_caste_23 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="OBC")
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Caste CATEGORY #3*/
gen Work_caste_31 = 0
replace Work_caste_31 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & v29=="SC")
replace Work_caste_31 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="SC")
/*
1 == No livestock
2 == Livestock+
*/

gen Work_caste_32 = 0
replace Work_caste_32 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & v29=="SC")
replace Work_caste_32 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="SC")
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_caste_33 = 0
replace Work_caste_33 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="SC")
replace Work_caste_33 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="SC")
replace Work_caste_33 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="SC")
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Caste CATEGORY #4*/
gen Work_caste_41 = 0
replace Work_caste_41 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & v29=="ST")
replace Work_caste_41 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="ST")
/*
1 == No livestock
2 == Livestock+
*/

gen Work_caste_42 = 0
replace Work_caste_42 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & v29=="ST")
replace Work_caste_42 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="ST")
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_caste_43 = 0
replace Work_caste_43 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & v29=="ST")
replace Work_caste_43 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="ST")
replace Work_caste_43 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & v29=="ST")
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/








/* Income categories (annual household income)
*/

gen Income = 0
replace Income = 1 if (v17=="< Rs 24000")
replace Income = 2 if (v17=="Rs 24001 - 48000")
replace Income = 3 if (v17=="Rs 48001 - 72000")
replace Income = 4 if (v17=="Rs 72001 - 96000")
replace Income = 5 if (v17=="Rs 96001 - 120000")
replace Income = 6 if (v17=="Rs 120001 - 180000")
replace Income = 7 if (v17=="> Rs 180000")



/* Income source under each category of income bracket
*/

/* Household INCOME CATEGORY #1*/
gen Work_income_11 = 0
replace Work_income_11 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==1)
replace Work_income_11 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==1)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_12 = 0
replace Work_income_12 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==1)
replace Work_income_12 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==1)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_13 = 0
replace Work_income_13 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==1)
replace Work_income_13 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==1)
replace Work_income_13 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==1)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Household INCOME CATEGORY #2*/
gen Work_income_21 = 0
replace Work_income_21 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==2)
replace Work_income_21 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==2)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_22 = 0
replace Work_income_22 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==2)
replace Work_income_22 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==2)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_23 = 0
replace Work_income_23 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==2)
replace Work_income_23 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==2)
replace Work_income_23 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==2)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Household INCOME CATEGORY #3*/
gen Work_income_31 = 0
replace Work_income_31 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==3)
replace Work_income_31 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==3)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_32 = 0
replace Work_income_32 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==3)
replace Work_income_32 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==3)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_33 = 0
replace Work_income_33 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==3)
replace Work_income_33 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==3)
replace Work_income_33 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==3)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Household INCOME CATEGORY #4*/
gen Work_income_41 = 0
replace Work_income_41 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==4)
replace Work_income_41 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==4)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_42 = 0
replace Work_income_42 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==4)
replace Work_income_42 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==4)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_43 = 0
replace Work_income_43 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==4)
replace Work_income_43 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==4)
replace Work_income_43 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==4)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Household INCOME CATEGORY #5*/
gen Work_income_51 = 0
replace Work_income_51 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==5)
replace Work_income_51 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==5)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_52 = 0
replace Work_income_52 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==5)
replace Work_income_52 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==5)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_53 = 0
replace Work_income_53 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==5)
replace Work_income_53 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==5)
replace Work_income_53 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==5)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Household INCOME CATEGORY #6*/
gen Work_income_61 = 0
replace Work_income_61 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==6)
replace Work_income_61 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==6)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_62 = 0
replace Work_income_62 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==6)
replace Work_income_62 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==6)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_63 = 0
replace Work_income_63 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==6)
replace Work_income_63 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==6)
replace Work_income_63 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==6)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/


/* Household INCOME CATEGORY #7*/
gen Work_income_71 = 0
replace Work_income_71 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & Income==7)
replace Work_income_71 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==7)
/*
1 == No livestock
2 == Livestock+
*/

gen Work_income_72 = 0
replace Work_income_72 = 1 if (animalhusbandrypoultrygoatssheep=="NO" & donothaveasourceofincome=="NO" & Income==7)
replace Work_income_72 = 2 if (animalhusbandrypoultrygoatssheep=="YES" & Income==7)
/*
1 == No livestock but some source of income
2 == Livestock+
*/

gen Work_income_73 = 0
replace Work_income_73 = 1 if (animalhusbandrypoultrygoatssheep=="YES" & Income==7)
replace Work_income_73 = 2 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="YES" & casuallabourforothersfarms=="NO" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==7)
replace Work_income_73 = 3 if (animalhusbandrypoultrygoatssheep=="NO" & cultivationonownorleasedlandself=="NO" & casuallabourforothersfarms=="YES" & nregawork=="NO" & ownshop=="NO" & weavingknittingsewingorembroider=="NO" & Income==7)
/*
1 == Livestock+
2 == Cultivators only
3 == Casual labour only
*/




outsheet using "C:\Users\30675.ISBDOMAIN1\Dropbox\Sayali\ISB\A little something for myself\Ashoka\Nutrition full_for analysis.csv", comma replace
outsheet using "C:\Users\Sau\Dropbox\Sayali\ISB\A little something for myself\Ashoka\Nutrition full_for analysis.csv", comma replace
