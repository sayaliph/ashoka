#### Testing for the significance of difference in proportion of malnourished mothers as well as children, across various work categories
data<-read.csv("Nutrition full_for analysis.csv",header=T)
attach(data)



################# WORK CATEGORIZATION (mothers, followed by children) ######################
#### Categorization 1: No Livestock and Livestock+
table(Nutri_status_bmi,Work_category_1)
X11<-c(439,72)
n11<-c((439+578),(72+97))
prop.test(X11,n11,alternative='greater',correct="TRUE")
prop.test(X11,n11,alternative='less',correct="TRUE")
prop.test(X11,n11,alternative='two.sided',correct="TRUE")



table(Nutri_status_childheightforage,Work_category_1)
X12<-c(710,125)
n12<-c((710+307),(125+44))
prop.test(X12,n12,alternative='greater',correct="TRUE")
prop.test(X12,n12,alternative='less',correct="TRUE")
prop.test(X12,n12,alternative='two.sided',correct="TRUE")



#### Categorization 2: Casual labour only and Livestock+
table(Nutri_status_bmi,Work_category_2)
X21<-c(95,72)
n21<-c((95+137),(72+97))
prop.test(X21,n21,alternative='greater',correct="TRUE")
prop.test(X21,n21,alternative='less',correct="TRUE")
prop.test(X21,n21,alternative='two.sided',correct="TRUE")



table(Nutri_status_childheightforage,Work_category_2)
X22<-c(188,125)
n22<-c((188+44),(125+44))
prop.test(X22,n22,alternative='greater',correct="TRUE")
prop.test(X22,n22,alternative='less',correct="TRUE")
prop.test(X22,n22,alternative='two.sided',correct="TRUE")



#### Categorization 3: Livestock+ and No livestock but at least some source of income
table(Nutri_status_bmi,Work_category_3)
X31<-c(72,282)
n31<-c((72+97),(282+374))
prop.test(X31,n31,alternative='greater',correct="TRUE")
prop.test(X31,n31,alternative='less',correct="TRUE")
prop.test(X31,n31,alternative='two.sided',correct="TRUE")



table(Nutri_status_childheightforage,Work_category_3)
X32<-c(125,470)
n32<-c((125+44),(470+186))
prop.test(X32,n32,alternative='greater',correct="TRUE")
prop.test(X32,n32,alternative='less',correct="TRUE")
prop.test(X32,n32,alternative='two.sided',correct="TRUE")



#### Categorization 4: Cultivators only and Casual Labour only
table(Nutri_status_bmi,Work_category_4)
X41<-c(58,95)
n41<-c((58+82),(95+137))
prop.test(X41,n41,alternative='greater',correct="TRUE")
prop.test(X41,n41,alternative='less',correct="TRUE")
prop.test(X41,n41,alternative='two.sided',correct="TRUE")



table(Nutri_status_childheightforage,Work_category_4)
X42<-c(99,188)
n42<-c((99+41),(188+44))
prop.test(X42,n42,alternative='greater',correct="TRUE")
prop.test(X42,n42,alternative='less',correct="TRUE")
prop.test(X42,n42,alternative='two.sided',correct="TRUE")



#### Categorization 5: Cultivators only and Livestock+
table(Nutri_status_bmi,Work_category_5)
X51<-c(58,72)
n51<-c((58+82),(72+97))
prop.test(X51,n51,alternative='greater',correct="TRUE")
prop.test(X51,n51,alternative='less',correct="TRUE")
prop.test(X51,n51,alternative='two.sided',correct="TRUE")



table(Nutri_status_childheightforage,Work_category_5)
X52<-c(99,125)
n52<-c((99+41),(125+44))
prop.test(X52,n52,alternative='greater',correct="TRUE")
prop.test(X52,n52,alternative='less',correct="TRUE")
prop.test(X52,n52,alternative='two.sided',correct="TRUE")


#### Categorization 6: Casual labour only and Livestock only
table(Nutri_status_bmi,Work_category_6)
X61<-c(95,5)
n61<-c((95+137),(5+18))
prop.test(X61,n61,alternative='greater',correct="TRUE")
prop.test(X61,n61,alternative='less',correct="TRUE")
prop.test(X61,n61,alternative='two.sided',correct="TRUE")



table(Nutri_status_childheightforage,Work_category_6)
X62<-c(188,13)
n62<-c((188+44),(13+10))
prop.test(X62,n62,alternative='greater',correct="TRUE")
prop.test(X62,n62,alternative='less',correct="TRUE")
prop.test(X62,n62,alternative='two.sided',correct="TRUE")






#################### Education level of the mother, classification ####################
#### 1: Illiterate, 2: Less than 5th standard, 3: 6th-9th standard, 4: 10th standard or more

#### Mothers
table(Nutri_status_bmi,Education)

#1-2
Xe11<-c(220,62)
ne11<-c((220+226),(62+88))
prop.test(Xe11,ne11,alternative='greater',correct="TRUE")
prop.test(Xe11,ne11,alternative='less',correct="TRUE")
prop.test(Xe11,ne11,alternative='two.sided',correct="TRUE")


#1-3
Xe12<-c(220,108)
ne12<-c((220+226),(108+156))
prop.test(Xe12,ne12,alternative='greater',correct="TRUE")
prop.test(Xe12,ne12,alternative='less',correct="TRUE")
prop.test(Xe12,ne12,alternative='two.sided',correct="TRUE")


#1-4
Xe13<-c(220,120)
ne13<-c((220+226),(120+205))
prop.test(Xe13,ne13,alternative='greater',correct="TRUE")
prop.test(Xe13,ne13,alternative='less',correct="TRUE")
prop.test(Xe13,ne13,alternative='two.sided',correct="TRUE")


#2-3
Xe14<-c(62,108)
ne14<-c((62+88),(108+156))
prop.test(Xe14,ne14,alternative='greater',correct="TRUE")
prop.test(Xe14,ne14,alternative='less',correct="TRUE")
prop.test(Xe14,ne14,alternative='two.sided',correct="TRUE")


#2-4
Xe15<-c(62,120)
ne15<-c((62+88),(120+205))
prop.test(Xe15,ne15,alternative='greater',correct="TRUE")
prop.test(Xe15,ne15,alternative='less',correct="TRUE")
prop.test(Xe15,ne15,alternative='two.sided',correct="TRUE")


#3-4
Xe16<-c(108,120)
ne16<-c((108+156),(120+205))
prop.test(Xe16,ne16,alternative='greater',correct="TRUE")
prop.test(Xe16,ne16,alternative='less',correct="TRUE")
prop.test(Xe16,ne16,alternative='two.sided',correct="TRUE")




#### Children
table(Nutri_status_childheightforage,Education)

#1-2
Xe21<-c(340,103)
ne21<-c((340+106),(103+47))
prop.test(Xe21,ne21,alternative='greater',correct="TRUE")
prop.test(Xe21,ne21,alternative='less',correct="TRUE")
prop.test(Xe21,ne21,alternative='two.sided',correct="TRUE")


#1-3
Xe22<-c(340,183)
ne22<-c((340+106),(183+81))
prop.test(Xe22,ne22,alternative='greater',correct="TRUE")
prop.test(Xe22,ne22,alternative='less',correct="TRUE")
prop.test(Xe22,ne22,alternative='two.sided',correct="TRUE")


#1-4
Xe23<-c(340,208)
ne23<-c((340+106),(208+117))
prop.test(Xe23,ne23,alternative='greater',correct="TRUE")
prop.test(Xe23,ne23,alternative='less',correct="TRUE")
prop.test(Xe23,ne23,alternative='two.sided',correct="TRUE")


#2-3
Xe24<-c(103,183)
ne24<-c((103+47),(183+81))
prop.test(Xe24,ne24,alternative='greater',correct="TRUE")
prop.test(Xe24,ne24,alternative='less',correct="TRUE")
prop.test(Xe24,ne24,alternative='two.sided',correct="TRUE")


#2-4
Xe25<-c(103,208)
ne25<-c((103+47),(208+117))
prop.test(Xe25,ne25,alternative='greater',correct="TRUE")
prop.test(Xe25,ne25,alternative='less',correct="TRUE")
prop.test(Xe25,ne25,alternative='two.sided',correct="TRUE")


#3-4
Xe26<-c(183,208)
ne26<-c((183+81),(208+117))
prop.test(Xe26,ne26,alternative='greater',correct="TRUE")
prop.test(Xe26,ne26,alternative='less',correct="TRUE")
prop.test(Xe26,ne26,alternative='two.sided',correct="TRUE")








#################### Religion classification ####################
Religion<-v30

#### Mothers
table(Nutri_status_bmi,Religion)

#Christian-Hindu
Xr11<-c(3,499)
nr11<-c((3+3),(499+651))
prop.test(Xr11,nr11,alternative='greater',correct="TRUE")
prop.test(Xr11,nr11,alternative='less',correct="TRUE")
prop.test(Xr11,nr11,alternative='two.sided',correct="TRUE")


#Hindu-Muslim
Xr12<-c(499,9)
nr12<-c((499+651),(9+21))
prop.test(Xr12,nr12,alternative='greater',correct="TRUE")
prop.test(Xr12,nr12,alternative='less',correct="TRUE")
prop.test(Xr12,nr12,alternative='two.sided',correct="TRUE")


#Christian-Muslim
Xr13<-c(3,9)
nr13<-c((3+3),(9+21))
prop.test(Xr13,nr13,alternative='greater',correct="TRUE")
prop.test(Xr13,nr13,alternative='less',correct="TRUE")
prop.test(Xr13,nr13,alternative='two.sided',correct="TRUE")


#### Children
table(Nutri_status_childheightforage,Religion)

#Christian-Hindu
Xr21<-c(3,808)
nr21<-c((3+3),(808+342))
prop.test(Xr21,nr21,alternative='greater',correct="TRUE")
prop.test(Xr21,nr21,alternative='less',correct="TRUE")
prop.test(Xr21,nr21,alternative='two.sided',correct="TRUE")


#Hindu-Muslim
Xr22<-c(808,24)
nr22<-c((808+342),(24+6))
prop.test(Xr22,nr22,alternative='greater',correct="TRUE")
prop.test(Xr22,nr22,alternative='less',correct="TRUE")
prop.test(Xr22,nr22,alternative='two.sided',correct="TRUE")


#Christian-Muslim
Xr23<-c(3,24)
nr23<-c((3+3),(24+6))
prop.test(Xr23,nr23,alternative='greater',correct="TRUE")
prop.test(Xr23,nr23,alternative='less',correct="TRUE")
prop.test(Xr23,nr23,alternative='two.sided',correct="TRUE")








#################### Caste classification ####################
Caste<-v29

#### Mothers
table(Nutri_status_bmi,Caste)

#General-OBC
Xc11<-c(100,195)
nc11<-c((100+160),(195+248))
prop.test(Xc11,nc11,alternative='greater',correct="TRUE")
prop.test(Xc11,nc11,alternative='less',correct="TRUE")
prop.test(Xc11,nc11,alternative='two.sided',correct="TRUE")


#General-SC
Xc12<-c(100,150)
nc12<-c((100+160),(150+202))
prop.test(Xc12,nc12,alternative='greater',correct="TRUE")
prop.test(Xc12,nc12,alternative='less',correct="TRUE")
prop.test(Xc12,nc12,alternative='two.sided',correct="TRUE")


#General-ST
Xc13<-c(100,66)
nc13<-c((100+160),(66+65))
prop.test(Xc13,nc13,alternative='greater',correct="TRUE")
prop.test(Xc13,nc13,alternative='less',correct="TRUE")
prop.test(Xc13,nc13,alternative='two.sided',correct="TRUE")


#OBC-SC
Xc14<-c(195,150)
nc14<-c((195+248),(150+202))
prop.test(Xc14,nc14,alternative='greater',correct="TRUE")
prop.test(Xc14,nc14,alternative='less',correct="TRUE")
prop.test(Xc14,nc14,alternative='two.sided',correct="TRUE")


#OBC-ST
Xc15<-c(195,66)
nc15<-c((195+248),(66+65))
prop.test(Xc15,nc15,alternative='greater',correct="TRUE")
prop.test(Xc15,nc15,alternative='less',correct="TRUE")
prop.test(Xc15,nc15,alternative='two.sided',correct="TRUE")


#SC-ST
Xc16<-c(150,66)
nc16<-c((150+202),(66+65))
prop.test(Xc16,nc16,alternative='greater',correct="TRUE")
prop.test(Xc16,nc16,alternative='less',correct="TRUE")
prop.test(Xc16,nc16,alternative='two.sided',correct="TRUE")



#### Children
table(Nutri_status_childheightforage,Caste)

#General-OBC
Xc21<-c(171,325)
nc21<-c((171+89),(325+118))
prop.test(Xc21,nc21,alternative='greater',correct="TRUE")
prop.test(Xc21,nc21,alternative='less',correct="TRUE")
prop.test(Xc21,nc21,alternative='two.sided',correct="TRUE")


#General-SC
Xc22<-c(171,245)
nc22<-c((171+89),(245+107))
prop.test(Xc22,nc22,alternative='greater',correct="TRUE")
prop.test(Xc22,nc22,alternative='less',correct="TRUE")
prop.test(Xc22,nc22,alternative='two.sided',correct="TRUE")


#General-ST
Xc23<-c(171,94)
nc23<-c((171+89),(94+37))
prop.test(Xc23,nc23,alternative='greater',correct="TRUE")
prop.test(Xc23,nc23,alternative='less',correct="TRUE")
prop.test(Xc23,nc23,alternative='two.sided',correct="TRUE")


#OBC-SC
Xc24<-c(325,245)
nc24<-c((325+118),(245+107))
prop.test(Xc24,nc24,alternative='greater',correct="TRUE")
prop.test(Xc24,nc24,alternative='less',correct="TRUE")
prop.test(Xc24,nc24,alternative='two.sided',correct="TRUE")


#OBC-ST
Xc25<-c(325,94)
nc25<-c((325+118),(94+37))
prop.test(Xc25,nc25,alternative='greater',correct="TRUE")
prop.test(Xc25,nc25,alternative='less',correct="TRUE")
prop.test(Xc25,nc25,alternative='two.sided',correct="TRUE")


#SC-ST
Xc26<-c(245,94)
nc26<-c((245+107),(94+37))
prop.test(Xc26,nc26,alternative='greater',correct="TRUE")
prop.test(Xc26,nc26,alternative='less',correct="TRUE")
prop.test(Xc26,nc26,alternative='two.sided',correct="TRUE")








######## GROW OURSELVES ########
#### Group 1: Do not grow, group 2: do grow

#### Millets
# Mothers
table(Nutri_status_bmi,milletgrowourselves)

Xf11<-c(375,135)
nf11<-c((375+477),(135+198))
prop.test(Xf11,nf11,alternative='greater',correct="TRUE")
prop.test(Xf11,nf11,alternative='less',correct="TRUE")
prop.test(Xf11,nf11,alternative='two.sided',correct="TRUE")

# Children
table(Nutri_status_childheightforage,milletgrowourselves)

Xf21<-c(581,253)
nf21<-c((581+271),(253+80))
prop.test(Xf21,nf21,alternative='greater',correct="TRUE")
prop.test(Xf21,nf21,alternative='less',correct="TRUE")
prop.test(Xf21,nf21,alternative='two.sided',correct="TRUE")


#### Rice
# Mothers
table(Nutri_status_bmi,ricegrowourselves)

Xf21<-c(294,64)
nf21<-c((294+353),(64+125))
prop.test(Xf21,nf21,alternative='greater',correct="TRUE")
prop.test(Xf21,nf21,alternative='less',correct="TRUE")
prop.test(Xf21,nf21,alternative='two.sided',correct="TRUE")

# Children
table(Nutri_status_childheightforage,ricegrowourselves)

Xf22<-c(453,124)
nf22<-c((453+194),(124+65))
prop.test(Xf22,nf22,alternative='greater',correct="TRUE")
prop.test(Xf22,nf22,alternative='less',correct="TRUE")
prop.test(Xf22,nf22,alternative='two.sided',correct="TRUE")


#### Milk and curd
# Mothers
table(Nutri_status_bmi,milkcurdgrowourselves)

Xf31<-c(306,52)
nf31<-c((306+401),(52+77))
prop.test(Xf31,nf31,alternative='greater',correct="TRUE")
prop.test(Xf31,nf31,alternative='less',correct="TRUE")
prop.test(Xf31,nf31,alternative='two.sided',correct="TRUE")

# Children
table(Nutri_status_childheightforage,milkcurdgrowourselves)

Xf32<-c(486,91)
nf32<-c((486+221),(91+38))
prop.test(Xf32,nf32,alternative='greater',correct="TRUE")
prop.test(Xf32,nf32,alternative='less',correct="TRUE")
prop.test(Xf32,nf32,alternative='two.sided',correct="TRUE")













############ Nutrition status based on the source of income; sliced based on the annual household income
#### Type I: No livestock, livestock+
#### Type II: No livestock but some income, livestock+
#### Type III: Livestock+, cultivators only, casual labour only


# Income bracket 1: < 24000
table(Nutri_status_bmi,Work_income_11)
table(Nutri_status_bmi,Work_income_12)
table(Nutri_status_bmi,Work_income_13)

table(Nutri_status_childheightforage,Work_income_11)
table(Nutri_status_childheightforage,Work_income_12)
table(Nutri_status_childheightforage,Work_income_13)

# Income bracket 2: 24001-48000
table(Nutri_status_bmi,Work_income_21)
table(Nutri_status_bmi,Work_income_22)
table(Nutri_status_bmi,Work_income_23)

table(Nutri_status_childheightforage,Work_income_21)
table(Nutri_status_childheightforage,Work_income_22)
table(Nutri_status_childheightforage,Work_income_23)




# Income bracket 3: 48001-72000
#Mothers
table(Nutri_status_bmi,Work_income_31)
Xwi3111<-c(113,17)
nwi3111<-c((113+129),(17+21))
prop.test(Xwi3111,nwi3111,alternative='greater',correct="TRUE")
prop.test(Xwi3111,nwi3111,alternative='less',correct="TRUE")
prop.test(Xwi3111,nwi3111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_income_32)
Xwi3112<-c(69,17)
nwi3112<-c((69+75),(17+21))
prop.test(Xwi3112,nwi3112,alternative='greater',correct="TRUE")
prop.test(Xwi3112,nwi3112,alternative='less',correct="TRUE")
prop.test(Xwi3112,nwi3112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_income_33) #### Type III: Livestock+, cultivators only, casual labour only
Xwi3113<-c(17,13)
nwi3113<-c((17+21),(13+19))
prop.test(Xwi3113,nwi3113,alternative='greater',correct="TRUE")
prop.test(Xwi3113,nwi3113,alternative='less',correct="TRUE")
prop.test(Xwi3113,nwi3113,alternative='two.sided',correct="TRUE")

Xwi3114<-c(17,16)
nwi3114<-c((17+21),(16+16))
prop.test(Xwi3114,nwi3114,alternative='greater',correct="TRUE")
prop.test(Xwi3114,nwi3114,alternative='less',correct="TRUE")
prop.test(Xwi3114,nwi3114,alternative='two.sided',correct="TRUE")

Xwi3115<-c(13,16)
nwi3115<-c((13+19),(16+16))
prop.test(Xwi3115,nwi3115,alternative='greater',correct="TRUE")
prop.test(Xwi3115,nwi3115,alternative='less',correct="TRUE")
prop.test(Xwi3115,nwi3115,alternative='two.sided',correct="TRUE")




#Children
table(Nutri_status_childheightforage,Work_income_31)
Xwi3211<-c(158,26)
nwi3211<-c((158+84),(26+12))
prop.test(Xwi3211,nwi3211,alternative='greater',correct="TRUE")
prop.test(Xwi3211,nwi3211,alternative='less',correct="TRUE")
prop.test(Xwi3211,nwi3211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_income_32)
Xwi3212<-c(100,26)
nwi3212<-c((100+44),(26+12))
prop.test(Xwi3212,nwi3212,alternative='greater',correct="TRUE")
prop.test(Xwi3212,nwi3212,alternative='less',correct="TRUE")
prop.test(Xwi3212,nwi3212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_income_33) #### Type III: Livestock+, cultivators only, casual labour only
Xwi3213<-c(26,23)
nwi3213<-c((26+12),(23+9))
prop.test(Xwi3213,nwi3213,alternative='greater',correct="TRUE")
prop.test(Xwi3213,nwi3213,alternative='less',correct="TRUE")
prop.test(Xwi3213,nwi3213,alternative='two.sided',correct="TRUE")

Xwi3214<-c(26,22)
nwi3214<-c((26+12),(22+10))
prop.test(Xwi3214,nwi3214,alternative='greater',correct="TRUE")
prop.test(Xwi3214,nwi3214,alternative='less',correct="TRUE")
prop.test(Xwi3214,nwi3214,alternative='two.sided',correct="TRUE")

Xwi3215<-c(23,22)
nwi3215<-c((23+9),(22+10))
prop.test(Xwi3215,nwi3215,alternative='greater',correct="TRUE")
prop.test(Xwi3215,nwi3215,alternative='less',correct="TRUE")
prop.test(Xwi3215,nwi3215,alternative='two.sided',correct="TRUE")





# Income bracket 4: 72001-96000
#Mothers
table(Nutri_status_bmi,Work_income_41)
Xwi4111<-c(82,17)
nwi4111<-c((82+96),(17+19))
prop.test(Xwi4111,nwi4111,alternative='greater',correct="TRUE")
prop.test(Xwi4111,nwi4111,alternative='less',correct="TRUE")
prop.test(Xwi4111,nwi4111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_income_42)
Xwi4112<-c(51,17)
nwi4112<-c((51+59),(17+19))
prop.test(Xwi4112,nwi4112,alternative='greater',correct="TRUE")
prop.test(Xwi4112,nwi4112,alternative='less',correct="TRUE")
prop.test(Xwi4112,nwi4112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_income_43) #### Type III: Livestock+, cultivators only, casual labour only
Xwi4113<-c(17,13)
nwi4113<-c((17+19),(13+14))
prop.test(Xwi4113,nwi4113,alternative='greater',correct="TRUE")
prop.test(Xwi4113,nwi4113,alternative='less',correct="TRUE")
prop.test(Xwi4113,nwi4113,alternative='two.sided',correct="TRUE")

Xwi4114<-c(17,13)
nwi4114<-c((17+19),(13+21))
prop.test(Xwi4114,nwi4114,alternative='greater',correct="TRUE")
prop.test(Xwi4114,nwi4114,alternative='less',correct="TRUE")
prop.test(Xwi4114,nwi4114,alternative='two.sided',correct="TRUE")

Xwi4115<-c(13,13)
nwi4115<-c((13+14),(13+21))
prop.test(Xwi4115,nwi4115,alternative='greater',correct="TRUE")
prop.test(Xwi4115,nwi4115,alternative='less',correct="TRUE")
prop.test(Xwi4115,nwi4115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_income_41)
Xwi4211<-c(111,29)
nwi4211<-c((111+67),(29+7))
prop.test(Xwi4211,nwi4211,alternative='greater',correct="TRUE")
prop.test(Xwi4211,nwi4211,alternative='less',correct="TRUE")
prop.test(Xwi4211,nwi4211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_income_42)
Xwi4212<-c(73,29)
nwi4212<-c((73+37),(29+7))
prop.test(Xwi4212,nwi4212,alternative='greater',correct="TRUE")
prop.test(Xwi4212,nwi4212,alternative='less',correct="TRUE")
prop.test(Xwi4212,nwi4212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_income_43) #### Type III: Livestock+, cultivators only, casual labour only
Xwi4213<-c(29,15)
nwi4213<-c((29+7),(15+12))
prop.test(Xwi4213,nwi4213,alternative='greater',correct="TRUE")
prop.test(Xwi4213,nwi4213,alternative='less',correct="TRUE")
prop.test(Xwi4213,nwi4213,alternative='two.sided',correct="TRUE")

Xwi4214<-c(29,30)
nwi4214<-c((29+7),(30+4))
prop.test(Xwi4214,nwi4214,alternative='greater',correct="TRUE")
prop.test(Xwi4214,nwi4214,alternative='less',correct="TRUE")
prop.test(Xwi4214,nwi4214,alternative='two.sided',correct="TRUE")

Xwi4215<-c(15,30)
nwi4215<-c((15+12),(30+4))
prop.test(Xwi4215,nwi4215,alternative='greater',correct="TRUE")
prop.test(Xwi4215,nwi4215,alternative='less',correct="TRUE")
prop.test(Xwi4215,nwi4215,alternative='two.sided',correct="TRUE")






# Income bracket 5: 96001-120000
#Mothers
table(Nutri_status_bmi,Work_income_51)
Xwi5111<-c(28,6)
nwi5111<-c((28+80),(6+9))
prop.test(Xwi5111,nwi5111,alternative='greater',correct="TRUE")
prop.test(Xwi5111,nwi5111,alternative='less',correct="TRUE")
prop.test(Xwi5111,nwi5111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_income_52)
Xwi5112<-c(13,6)
nwi5112<-c((13+42),(6+9))
prop.test(Xwi5112,nwi5112,alternative='greater',correct="TRUE")
prop.test(Xwi5112,nwi5112,alternative='less',correct="TRUE")
prop.test(Xwi5112,nwi5112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_income_53) #### Type III: Livestock+, cultivators only, casual labour only
Xwi5113<-c(6,4)
nwi5113<-c((6+9),(4+8))
prop.test(Xwi5113,nwi5113,alternative='greater',correct="TRUE")
prop.test(Xwi5113,nwi5113,alternative='less',correct="TRUE")
prop.test(Xwi5113,nwi5113,alternative='two.sided',correct="TRUE")

Xwi5114<-c(6,7)
nwi5114<-c((6+9),(7+25))
prop.test(Xwi5114,nwi5114,alternative='greater',correct="TRUE")
prop.test(Xwi5114,nwi5114,alternative='less',correct="TRUE")
prop.test(Xwi5114,nwi5114,alternative='two.sided',correct="TRUE")

Xwi5115<-c(4,7)
nwi5115<-c((4+8),(7+25))
prop.test(Xwi5115,nwi5115,alternative='greater',correct="TRUE")
prop.test(Xwi5115,nwi5115,alternative='less',correct="TRUE")
prop.test(Xwi5115,nwi5115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_income_51)
Xwi5211<-c(80,9)
nwi5211<-c((80+28),(9+6))
prop.test(Xwi5211,nwi5211,alternative='greater',correct="TRUE")
prop.test(Xwi5211,nwi5211,alternative='less',correct="TRUE")
prop.test(Xwi5211,nwi5211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_income_52)
Xwi5212<-c(41,9)
nwi5212<-c((41+14),(9+6))
prop.test(Xwi5212,nwi5212,alternative='greater',correct="TRUE")
prop.test(Xwi5212,nwi5212,alternative='less',correct="TRUE")
prop.test(Xwi5212,nwi5212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_income_53) #### Type III: Livestock+, cultivators only, casual labour only
Xwi5213<-c(9,7)
nwi5213<-c((9+6),(7+5))
prop.test(Xwi5213,nwi5213,alternative='greater',correct="TRUE")
prop.test(Xwi5213,nwi5213,alternative='less',correct="TRUE")
prop.test(Xwi5213,nwi5213,alternative='two.sided',correct="TRUE")

Xwi5214<-c(9,24)
nwi5214<-c((9+6),(24+8))
prop.test(Xwi5214,nwi5214,alternative='greater',correct="TRUE")
prop.test(Xwi5214,nwi5214,alternative='less',correct="TRUE")
prop.test(Xwi5214,nwi5214,alternative='two.sided',correct="TRUE")

Xwi5215<-c(7,24)
nwi5215<-c((7+5),(24+8))
prop.test(Xwi5215,nwi5215,alternative='greater',correct="TRUE")
prop.test(Xwi5215,nwi5215,alternative='less',correct="TRUE")
prop.test(Xwi5215,nwi5215,alternative='two.sided',correct="TRUE")






# Income bracket 6: 120001-180000
table(Nutri_status_bmi,Work_income_61)
table(Nutri_status_bmi,Work_income_62)
table(Nutri_status_bmi,Work_income_63)

table(Nutri_status_childheightforage,Work_income_61)
table(Nutri_status_childheightforage,Work_income_62)
table(Nutri_status_childheightforage,Work_income_63)

# Income bracket 7: > 180000
table(Nutri_status_bmi,Work_income_71)
table(Nutri_status_bmi,Work_income_72)
table(Nutri_status_bmi,Work_income_73)

table(Nutri_status_childheightforage,Work_income_71)
table(Nutri_status_childheightforage,Work_income_72)
table(Nutri_status_childheightforage,Work_income_73)









############ Nutrition status based on the source of income; sliced based on the mother's educational level
#### 1: Illiterate, 2: Less than 5th standard, 3: 6th-9th standard, 4: 10th standard or more

# Educational level: 1
#Mothers
table(Nutri_status_bmi,Work_education_11)
Xwe1111<-c(182,38)
nwe1111<-c((182+192),(38+34))
prop.test(Xwe1111,nwe1111,alternative='greater',correct="TRUE")
prop.test(Xwe1111,nwe1111,alternative='less',correct="TRUE")
prop.test(Xwe1111,nwe1111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_12)
Xwe1112<-c(139,38)
nwe1112<-c((139+158),(38+34))
prop.test(Xwe1112,nwe1112,alternative='greater',correct="TRUE")
prop.test(Xwe1112,nwe1112,alternative='less',correct="TRUE")
prop.test(Xwe1112,nwe1112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_13) #### Type III: Livestock+, cultivators only, casual labour only
Xwe1113<-c(38,22)
nwe1113<-c((38+34),(22+30))
prop.test(Xwe1113,nwe1113,alternative='greater',correct="TRUE")
prop.test(Xwe1113,nwe1113,alternative='less',correct="TRUE")
prop.test(Xwe1113,nwe1113,alternative='two.sided',correct="TRUE")

Xwe1114<-c(38,54)
nwe1114<-c((38+34),(54+59))
prop.test(Xwe1114,nwe1114,alternative='greater',correct="TRUE")
prop.test(Xwe1114,nwe1114,alternative='less',correct="TRUE")
prop.test(Xwe1114,nwe1114,alternative='two.sided',correct="TRUE")

Xwe1115<-c(22,54)
nwe1115<-c((22+30),(54+59))
prop.test(Xwe1115,nwe1115,alternative='greater',correct="TRUE")
prop.test(Xwe1115,nwe1115,alternative='less',correct="TRUE")
prop.test(Xwe1115,nwe1115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_education_11)
Xwe1211<-c(284,56)
nwe1211<-c((284+90),(56+16))
prop.test(Xwe1211,nwe1211,alternative='greater',correct="TRUE")
prop.test(Xwe1211,nwe1211,alternative='less',correct="TRUE")
prop.test(Xwe1211,nwe1211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_12)
Xwe1212<-c(226,56)
nwe1212<-c((226+71),(56+16))
prop.test(Xwe1212,nwe1212,alternative='greater',correct="TRUE")
prop.test(Xwe1212,nwe1212,alternative='less',correct="TRUE")
prop.test(Xwe1212,nwe1212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_13) #### Type III: Livestock+, cultivators only, casual labour only
Xwe1213<-c(56,42)
nwe1213<-c((56+16),(42+10))
prop.test(Xwe1213,nwe1213,alternative='greater',correct="TRUE")
prop.test(Xwe1213,nwe1213,alternative='less',correct="TRUE")
prop.test(Xwe1213,nwe1213,alternative='two.sided',correct="TRUE")

Xwe1214<-c(56,93)
nwe1214<-c((56+16),(93+20))
prop.test(Xwe1214,nwe1214,alternative='greater',correct="TRUE")
prop.test(Xwe1214,nwe1214,alternative='less',correct="TRUE")
prop.test(Xwe1214,nwe1214,alternative='two.sided',correct="TRUE")

Xwe1215<-c(42,93)
nwe1215<-c((42+10),(93+20))
prop.test(Xwe1215,nwe1215,alternative='greater',correct="TRUE")
prop.test(Xwe1215,nwe1215,alternative='less',correct="TRUE")
prop.test(Xwe1215,nwe1215,alternative='two.sided',correct="TRUE")




# Educational level: 2
#Mothers
table(Nutri_status_bmi,Work_education_21)
Xwe2111<-c(50,12)
nwe2111<-c((50+71),(12+17))
prop.test(Xwe2111,nwe2111,alternative='greater',correct="TRUE")
prop.test(Xwe2111,nwe2111,alternative='less',correct="TRUE")
prop.test(Xwe2111,nwe2111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_22)
Xwe2112<-c(33,12)
nwe2112<-c((33+53),(12+17))
prop.test(Xwe2112,nwe2112,alternative='greater',correct="TRUE")
prop.test(Xwe2112,nwe2112,alternative='less',correct="TRUE")
prop.test(Xwe2112,nwe2112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_23) #### Type III: Livestock+, cultivators only, casual labour only
Xwe2113<-c(12,13)
nwe2113<-c((12+17),(13+17))
prop.test(Xwe2113,nwe2113,alternative='greater',correct="TRUE")
prop.test(Xwe2113,nwe2113,alternative='less',correct="TRUE")
prop.test(Xwe2113,nwe2113,alternative='two.sided',correct="TRUE")

Xwe2114<-c(12,11)
nwe2114<-c((12+17),(11+19))
prop.test(Xwe2114,nwe2114,alternative='greater',correct="TRUE")
prop.test(Xwe2114,nwe2114,alternative='less',correct="TRUE")
prop.test(Xwe2114,nwe2114,alternative='two.sided',correct="TRUE")

Xwe2115<-c(13,11)
nwe2115<-c((13+17),(11+19))
prop.test(Xwe2115,nwe2115,alternative='greater',correct="TRUE")
prop.test(Xwe2115,nwe2115,alternative='less',correct="TRUE")
prop.test(Xwe2115,nwe2115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_education_21)
Xwe2211<-c(81,22)
nwe2211<-c((81+40),(22+7))
prop.test(Xwe2211,nwe2211,alternative='greater',correct="TRUE")
prop.test(Xwe2211,nwe2211,alternative='less',correct="TRUE")
prop.test(Xwe2211,nwe2211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_22)
Xwe2212<-c(61,22)
nwe2212<-c((61+25),(22+7))
prop.test(Xwe2212,nwe2212,alternative='greater',correct="TRUE")
prop.test(Xwe2212,nwe2212,alternative='less',correct="TRUE")
prop.test(Xwe2212,nwe2212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_23) #### Type III: Livestock+, cultivators only, casual labour only
Xwe2213<-c(22,19)
nwe2213<-c((22+7),(19+11))
prop.test(Xwe2213,nwe2213,alternative='greater',correct="TRUE")
prop.test(Xwe2213,nwe2213,alternative='less',correct="TRUE")
prop.test(Xwe2213,nwe2213,alternative='two.sided',correct="TRUE")

Xwe2214<-c(22,24)
nwe2214<-c((22+7),(24+6))
prop.test(Xwe2214,nwe2214,alternative='greater',correct="TRUE")
prop.test(Xwe2214,nwe2214,alternative='less',correct="TRUE")
prop.test(Xwe2214,nwe2214,alternative='two.sided',correct="TRUE")

Xwe2215<-c(19,24)
nwe2215<-c((19+11),(24+6))
prop.test(Xwe2215,nwe2215,alternative='greater',correct="TRUE")
prop.test(Xwe2215,nwe2215,alternative='less',correct="TRUE")
prop.test(Xwe2215,nwe2215,alternative='two.sided',correct="TRUE")




# Educational level: 3
#Mothers
table(Nutri_status_bmi,Work_education_31)
Xwe3111<-c(96,12)
nwe3111<-c((96+135),(12+21))
prop.test(Xwe3111,nwe3111,alternative='greater',correct="TRUE")
prop.test(Xwe3111,nwe3111,alternative='less',correct="TRUE")
prop.test(Xwe3111,nwe3111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_32)
Xwe3112<-c(59,12)
nwe3112<-c((59+69),(12+21))
prop.test(Xwe3112,nwe3112,alternative='greater',correct="TRUE")
prop.test(Xwe3112,nwe3112,alternative='less',correct="TRUE")
prop.test(Xwe3112,nwe3112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_33) #### Type III: Livestock+, cultivators only, casual labour only
Xwe3113<-c(12,13)
nwe3113<-c((12+21),(13+14))
prop.test(Xwe3113,nwe3113,alternative='greater',correct="TRUE")
prop.test(Xwe3113,nwe3113,alternative='less',correct="TRUE")
prop.test(Xwe3113,nwe3113,alternative='two.sided',correct="TRUE")

Xwe3114<-c(12,20)
nwe3114<-c((12+21),(20+26))
prop.test(Xwe3114,nwe3114,alternative='greater',correct="TRUE")
prop.test(Xwe3114,nwe3114,alternative='less',correct="TRUE")
prop.test(Xwe3114,nwe3114,alternative='two.sided',correct="TRUE")

Xwe3115<-c(13,20)
nwe3115<-c((13+14),(20+26))
prop.test(Xwe3115,nwe3115,alternative='greater',correct="TRUE")
prop.test(Xwe3115,nwe3115,alternative='less',correct="TRUE")
prop.test(Xwe3115,nwe3115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_education_31)
Xwe3211<-c(162,21)
nwe3211<-c((162+69),(21+12))
prop.test(Xwe3211,nwe3211,alternative='greater',correct="TRUE")
prop.test(Xwe3211,nwe3211,alternative='less',correct="TRUE")
prop.test(Xwe3211,nwe3211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_32)
Xwe3212<-c(88,21)
nwe3212<-c((88+40),(21+12))
prop.test(Xwe3212,nwe3212,alternative='greater',correct="TRUE")
prop.test(Xwe3212,nwe3212,alternative='less',correct="TRUE")
prop.test(Xwe3212,nwe3212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_33) #### Type III: Livestock+, cultivators only, casual labour only
Xwe3213<-c(21,17)
nwe3213<-c((21+12),(17+10))
prop.test(Xwe3213,nwe3213,alternative='greater',correct="TRUE")
prop.test(Xwe3213,nwe3213,alternative='less',correct="TRUE")
prop.test(Xwe3213,nwe3213,alternative='two.sided',correct="TRUE")

Xwe3214<-c(21,37)
nwe3214<-c((21+12),(37+9))
prop.test(Xwe3214,nwe3214,alternative='greater',correct="TRUE")
prop.test(Xwe3214,nwe3214,alternative='less',correct="TRUE")
prop.test(Xwe3214,nwe3214,alternative='two.sided',correct="TRUE")

Xwe3215<-c(17,37)
nwe3215<-c((17+12),(37+9))
prop.test(Xwe3215,nwe3215,alternative='greater',correct="TRUE")
prop.test(Xwe3215,nwe3215,alternative='less',correct="TRUE")
prop.test(Xwe3215,nwe3215,alternative='two.sided',correct="TRUE")




# Educational level: 4
#Mothers
table(Nutri_status_bmi,Work_education_41)
Xwe4111<-c(110,10)
nwe4111<-c((110+180),(10+25))
prop.test(Xwe4111,nwe4111,alternative='greater',correct="TRUE")
prop.test(Xwe4111,nwe4111,alternative='less',correct="TRUE")
prop.test(Xwe4111,nwe4111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_42)
Xwe4112<-c(50,10)
nwe4112<-c((50+94),(10+25))
prop.test(Xwe4112,nwe4112,alternative='greater',correct="TRUE")
prop.test(Xwe4112,nwe4112,alternative='less',correct="TRUE")
prop.test(Xwe4112,nwe4112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_education_43) #### Type III: Livestock+, cultivators only, casual labour only
Xwe4113<-c(10,9)
nwe4113<-c((10+25),(9+21))
prop.test(Xwe4113,nwe4113,alternative='greater',correct="TRUE")
prop.test(Xwe4113,nwe4113,alternative='less',correct="TRUE")
prop.test(Xwe4113,nwe4113,alternative='two.sided',correct="TRUE")

Xwe4114<-c(10,10)
nwe4114<-c((10+25),(10+33))
prop.test(Xwe4114,nwe4114,alternative='greater',correct="TRUE")
prop.test(Xwe4114,nwe4114,alternative='less',correct="TRUE")
prop.test(Xwe4114,nwe4114,alternative='two.sided',correct="TRUE")

Xwe4115<-c(9,10)
nwe4115<-c((9+21),(10+33))
prop.test(Xwe4115,nwe4115,alternative='greater',correct="TRUE")
prop.test(Xwe4115,nwe4115,alternative='less',correct="TRUE")
prop.test(Xwe4115,nwe4115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_education_41)
Xwe4211<-c(182,26)
nwe4211<-c((182+108),(26+9))
prop.test(Xwe4211,nwe4211,alternative='greater',correct="TRUE")
prop.test(Xwe4211,nwe4211,alternative='less',correct="TRUE")
prop.test(Xwe4211,nwe4211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_42)
Xwe4212<-c(94,26)
nwe4212<-c((94+50),(26+9))
prop.test(Xwe4212,nwe4212,alternative='greater',correct="TRUE")
prop.test(Xwe4212,nwe4212,alternative='less',correct="TRUE")
prop.test(Xwe4212,nwe4212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_education_43) #### Type III: Livestock+, cultivators only, casual labour only
Xwe4213<-c(26,20)
nwe4213<-c((26+9),(20+10))
prop.test(Xwe4213,nwe4213,alternative='greater',correct="TRUE")
prop.test(Xwe4213,nwe4213,alternative='less',correct="TRUE")
prop.test(Xwe4213,nwe4213,alternative='two.sided',correct="TRUE")

Xwe4214<-c(26,34)
nwe4214<-c((26+9),(34+9))
prop.test(Xwe4214,nwe4214,alternative='greater',correct="TRUE")
prop.test(Xwe4214,nwe4214,alternative='less',correct="TRUE")
prop.test(Xwe4214,nwe4214,alternative='two.sided',correct="TRUE")

Xwe4215<-c(20,34)
nwe4215<-c((20+10),(34+9))
prop.test(Xwe4215,nwe4215,alternative='greater',correct="TRUE")
prop.test(Xwe4215,nwe4215,alternative='less',correct="TRUE")
prop.test(Xwe4215,nwe4215,alternative='two.sided',correct="TRUE")






############ Nutrition status based on the source of income; sliced based on the caste of the family
# Caste 1: General
#Mothers
table(Nutri_status_bmi,Work_caste_11)
Xwc1111<-c(83,17)
nwc1111<-c((83+123),(17+37))
prop.test(Xwc1111,nwc1111,alternative='greater',correct="TRUE")
prop.test(Xwc1111,nwc1111,alternative='less',correct="TRUE")
prop.test(Xwc1111,nwc1111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_12)
Xwc1112<-c(55,17)
nwc1112<-c((55+81),(17+37))
prop.test(Xwc1112,nwc1112,alternative='greater',correct="TRUE")
prop.test(Xwc1112,nwc1112,alternative='less',correct="TRUE")
prop.test(Xwc1112,nwc1112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_13) #### Type III: Livestock+, cultivators only, casual labour only
Xwc1113<-c(17,11)
nwc1113<-c((17+37),(11+22))
prop.test(Xwc1113,nwc1113,alternative='greater',correct="TRUE")
prop.test(Xwc1113,nwc1113,alternative='less',correct="TRUE")
prop.test(Xwc1113,nwc1113,alternative='two.sided',correct="TRUE")

Xwc1114<-c(17,18)
nwc1114<-c((17+37),(18+30))
prop.test(Xwc1114,nwc1114,alternative='greater',correct="TRUE")
prop.test(Xwc1114,nwc1114,alternative='less',correct="TRUE")
prop.test(Xwc1114,nwc1114,alternative='two.sided',correct="TRUE")

Xwc1115<-c(11,18)
nwc1115<-c((11+22),(18+30))
prop.test(Xwc1115,nwc1115,alternative='greater',correct="TRUE")
prop.test(Xwc1115,nwc1115,alternative='less',correct="TRUE")
prop.test(Xwc1115,nwc1115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_caste_11)
Xwc1211<-c(134,37)
nwc1211<-c((134+72),(37+17))
prop.test(Xwc1211,nwc1211,alternative='greater',correct="TRUE")
prop.test(Xwc1211,nwc1211,alternative='less',correct="TRUE")
prop.test(Xwc1211,nwc1211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_12)
Xwc1212<-c(88,37)
nwc1212<-c((88+48),(37+17))
prop.test(Xwc1212,nwc1212,alternative='greater',correct="TRUE")
prop.test(Xwc1212,nwc1212,alternative='less',correct="TRUE")
prop.test(Xwc1212,nwc1212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_13) #### Type III: Livestock+, cultivators only, casual labour only
Xwc1213<-c(37,20)
nwc1213<-c((37+17),(20+13))
prop.test(Xwc1213,nwc1213,alternative='greater',correct="TRUE")
prop.test(Xwc1213,nwc1213,alternative='less',correct="TRUE")
prop.test(Xwc1213,nwc1213,alternative='two.sided',correct="TRUE")

Xwc1214<-c(37,38)
nwc1214<-c((37+17),(38+10))
prop.test(Xwc1214,nwc1214,alternative='greater',correct="TRUE")
prop.test(Xwc1214,nwc1214,alternative='less',correct="TRUE")
prop.test(Xwc1214,nwc1214,alternative='two.sided',correct="TRUE")

Xwc1215<-c(20,38)
nwc1215<-c((20+13),(38+10))
prop.test(Xwc1215,nwc1215,alternative='greater',correct="TRUE")
prop.test(Xwc1215,nwc1215,alternative='less',correct="TRUE")
prop.test(Xwc1215,nwc1215,alternative='two.sided',correct="TRUE")




# Caste 2: OBC
#Mothers
table(Nutri_status_bmi,Work_caste_21)
Xwc2111<-c(163,32)
nwc2111<-c((163+217),(32+31))
prop.test(Xwc2111,nwc2111,alternative='greater',correct="TRUE")
prop.test(Xwc2111,nwc2111,alternative='less',correct="TRUE")
prop.test(Xwc2111,nwc2111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_22)
Xwc2112<-c(105,32)
nwc2112<-c((105+132),(32+31))
prop.test(Xwc2112,nwc2112,alternative='greater',correct="TRUE")
prop.test(Xwc2112,nwc2112,alternative='less',correct="TRUE")
prop.test(Xwc2112,nwc2112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_23) #### Type III: Livestock+, cultivators only, casual labour only
Xwc2113<-c(32,25)
nwc2113<-c((32+31),(25+39))
prop.test(Xwc2113,nwc2113,alternative='greater',correct="TRUE")
prop.test(Xwc2113,nwc2113,alternative='less',correct="TRUE")
prop.test(Xwc2113,nwc2113,alternative='two.sided',correct="TRUE")

Xwc2114<-c(32,41)
nwc2114<-c((32+31),(41+40))
prop.test(Xwc2114,nwc2114,alternative='greater',correct="TRUE")
prop.test(Xwc2114,nwc2114,alternative='less',correct="TRUE")
prop.test(Xwc2114,nwc2114,alternative='two.sided',correct="TRUE")

Xwc2115<-c(25,41)
nwc2115<-c((25+39),(41+40))
prop.test(Xwc2115,nwc2115,alternative='greater',correct="TRUE")
prop.test(Xwc2115,nwc2115,alternative='less',correct="TRUE")
prop.test(Xwc2115,nwc2115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_caste_21)
Xwc2211<-c(277,48)
nwc2211<-c((277+103),(48+15))
prop.test(Xwc2211,nwc2211,alternative='greater',correct="TRUE")
prop.test(Xwc2211,nwc2211,alternative='less',correct="TRUE")
prop.test(Xwc2211,nwc2211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_22)
Xwc2212<-c(176,48)
nwc2212<-c((176+61),(48+15))
prop.test(Xwc2212,nwc2212,alternative='greater',correct="TRUE")
prop.test(Xwc2212,nwc2212,alternative='less',correct="TRUE")
prop.test(Xwc2212,nwc2212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_23) #### Type III: Livestock+, cultivators only, casual labour only
Xwc2213<-c(48,49)
nwc2213<-c((48+15),(49+15))
prop.test(Xwc2213,nwc2213,alternative='greater',correct="TRUE")
prop.test(Xwc2213,nwc2213,alternative='less',correct="TRUE")
prop.test(Xwc2213,nwc2213,alternative='two.sided',correct="TRUE")

Xwc2214<-c(48,65)
nwc2214<-c((48+15),(65+16))
prop.test(Xwc2214,nwc2214,alternative='greater',correct="TRUE")
prop.test(Xwc2214,nwc2214,alternative='less',correct="TRUE")
prop.test(Xwc2214,nwc2214,alternative='two.sided',correct="TRUE")

Xwc2215<-c(49,65)
nwc2215<-c((49+15),(65+16))
prop.test(Xwc2215,nwc2215,alternative='greater',correct="TRUE")
prop.test(Xwc2215,nwc2215,alternative='less',correct="TRUE")
prop.test(Xwc2215,nwc2215,alternative='two.sided',correct="TRUE")




# Caste 3: SC
#Mothers
table(Nutri_status_bmi,Work_caste_31)
Xwc3111<-c(137,13)
nwc3111<-c((137+187),(13+15))
prop.test(Xwc3111,nwc3111,alternative='greater',correct="TRUE")
prop.test(Xwc3111,nwc3111,alternative='less',correct="TRUE")
prop.test(Xwc3111,nwc3111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_32)
Xwc3112<-c(81,13)
nwc3112<-c((81+121),(13+15))
prop.test(Xwc3112,nwc3112,alternative='greater',correct="TRUE")
prop.test(Xwc3112,nwc3112,alternative='less',correct="TRUE")
prop.test(Xwc3112,nwc3112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_33) #### Type III: Livestock+, cultivators only, casual labour only
Xwc3113<-c(13,10)
nwc3113<-c((13+15),(10+17))
prop.test(Xwc3113,nwc3113,alternative='greater',correct="TRUE")
prop.test(Xwc3113,nwc3113,alternative='less',correct="TRUE")
prop.test(Xwc3113,nwc3113,alternative='two.sided',correct="TRUE")

Xwc3114<-c(13,27)
nwc3114<-c((13+15),(27+53))
prop.test(Xwc3114,nwc3114,alternative='greater',correct="TRUE")
prop.test(Xwc3114,nwc3114,alternative='less',correct="TRUE")
prop.test(Xwc3114,nwc3114,alternative='two.sided',correct="TRUE")

Xwc3115<-c(10,27)
nwc3115<-c((10+17),(27+53))
prop.test(Xwc3115,nwc3115,alternative='greater',correct="TRUE")
prop.test(Xwc3115,nwc3115,alternative='less',correct="TRUE")
prop.test(Xwc3115,nwc3115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_caste_31)
Xwc3211<-c(226,19)
nwc3211<-c((226+98),(19+9))
prop.test(Xwc3211,nwc3211,alternative='greater',correct="TRUE")
prop.test(Xwc3211,nwc3211,alternative='less',correct="TRUE")
prop.test(Xwc3211,nwc3211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_32)
Xwc3212<-c(148,19)
nwc3212<-c((148+54),(19+9))
prop.test(Xwc3212,nwc3212,alternative='greater',correct="TRUE")
prop.test(Xwc3212,nwc3212,alternative='less',correct="TRUE")
prop.test(Xwc3212,nwc3212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_33) #### Type III: Livestock+, cultivators only, casual labour only
Xwc3213<-c(19,18)
nwc3213<-c((19+9),(18+9))
prop.test(Xwc3213,nwc3213,alternative='greater',correct="TRUE")
prop.test(Xwc3213,nwc3213,alternative='less',correct="TRUE")
prop.test(Xwc3213,nwc3213,alternative='two.sided',correct="TRUE")

Xwc3214<-c(19,66)
nwc3214<-c((19+9),(66+14))
prop.test(Xwc3214,nwc3214,alternative='greater',correct="TRUE")
prop.test(Xwc3214,nwc3214,alternative='less',correct="TRUE")
prop.test(Xwc3214,nwc3214,alternative='two.sided',correct="TRUE")

Xwc3215<-c(18,66)
nwc3215<-c((18+9),(66+14))
prop.test(Xwc3215,nwc3215,alternative='greater',correct="TRUE")
prop.test(Xwc3215,nwc3215,alternative='less',correct="TRUE")
prop.test(Xwc3215,nwc3215,alternative='two.sided',correct="TRUE")




# Caste 4: ST
#Mothers
table(Nutri_status_bmi,Work_caste_41)
Xwc4111<-c(56,10)
nwc4111<-c((56+51),(10+14))
prop.test(Xwc4111,nwc4111,alternative='greater',correct="TRUE")
prop.test(Xwc4111,nwc4111,alternative='less',correct="TRUE")
prop.test(Xwc4111,nwc4111,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_42)
Xwc4112<-c(41,10)
nwc4112<-c((41+40),(10+14))
prop.test(Xwc4112,nwc4112,alternative='greater',correct="TRUE")
prop.test(Xwc4112,nwc4112,alternative='less',correct="TRUE")
prop.test(Xwc4112,nwc4112,alternative='two.sided',correct="TRUE")


table(Nutri_status_bmi,Work_caste_43) #### Type III: Livestock+, cultivators only, casual labour only
Xwc4113<-c(10,12)
nwc4113<-c((10+14),(12+4))
prop.test(Xwc4113,nwc4113,alternative='greater',correct="TRUE")
prop.test(Xwc4113,nwc4113,alternative='less',correct="TRUE")
prop.test(Xwc4113,nwc4113,alternative='two.sided',correct="TRUE")

Xwc4114<-c(10,9)
nwc4114<-c((10+14),(9+14))
prop.test(Xwc4114,nwc4114,alternative='greater',correct="TRUE")
prop.test(Xwc4114,nwc4114,alternative='less',correct="TRUE")
prop.test(Xwc4114,nwc4114,alternative='two.sided',correct="TRUE")

Xwc4115<-c(12,9)
nwc4115<-c((12+4),(9+14))
prop.test(Xwc4115,nwc4115,alternative='greater',correct="TRUE")
prop.test(Xwc4115,nwc4115,alternative='less',correct="TRUE")
prop.test(Xwc4115,nwc4115,alternative='two.sided',correct="TRUE")


#Children
table(Nutri_status_childheightforage,Work_caste_41)
Xwc4211<-c(73,21)
nwc4211<-c((73+34),(21+3))
prop.test(Xwc4211,nwc4211,alternative='greater',correct="TRUE")
prop.test(Xwc4211,nwc4211,alternative='less',correct="TRUE")
prop.test(Xwc4211,nwc4211,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_42)
Xwc4212<-c(58,21)
nwc4212<-c((58+23),(21+3))
prop.test(Xwc4212,nwc4212,alternative='greater',correct="TRUE")
prop.test(Xwc4212,nwc4212,alternative='less',correct="TRUE")
prop.test(Xwc4212,nwc4212,alternative='two.sided',correct="TRUE")


table(Nutri_status_childheightforage,Work_caste_43) #### Type III: Livestock+, cultivators only, casual labour only
Xwc4213<-c(21,12)
nwc4213<-c((21+3),(12+4))
prop.test(Xwc4213,nwc4213,alternative='greater',correct="TRUE")
prop.test(Xwc4213,nwc4213,alternative='less',correct="TRUE")
prop.test(Xwc4213,nwc4213,alternative='two.sided',correct="TRUE")

Xwc4214<-c(21,19)
nwc4214<-c((21+3),(19+4))
prop.test(Xwc4214,nwc4214,alternative='greater',correct="TRUE")
prop.test(Xwc4214,nwc4214,alternative='less',correct="TRUE")
prop.test(Xwc4214,nwc4214,alternative='two.sided',correct="TRUE")

Xwc4215<-c(12,19)
nwc4215<-c((12+4),(19+4))
prop.test(Xwc4215,nwc4215,alternative='greater',correct="TRUE")
prop.test(Xwc4215,nwc4215,alternative='less',correct="TRUE")
prop.test(Xwc4215,nwc4215,alternative='two.sided',correct="TRUE")
