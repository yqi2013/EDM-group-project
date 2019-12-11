# Determined which time intervals to search by finding the four minimums on the vizualization
# Must run 'pre_intervention.R' prior to running this code!

## Find max acceleration for each of Alysandra's attempts ##

ggplot(data = a_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

a_maxAcc_1 <- filter(pre_intervention_df, time < 10, player_name == alysandra)
a_maxAcc_1 <- max(a_maxAcc_1$Y_value)  

a_maxAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == alysandra)
a_maxAcc_2 <- max(a_maxAcc_2$Y_value)  

a_maxAcc_3 <- filter(pre_intervention_df, time > 20, time < 25, player_name == alysandra)
a_maxAcc_3 <- max(a_maxAcc_3$Y_value)  

a_maxAcc_3 <- filter(pre_intervention_df, time > 25, time < 30, player_name == alysandra)
a_maxAcc_3 <- max(a_maxAcc_3$Y_value)  


## Find max acceleration for each of David's attempts ##

ggplot(data = d_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

d_maxAcc_1 <- filter(pre_intervention_df, time > 2, time < 5, player_name == david)
d_maxAcc_1 <- max(d_maxAcc_1$Y_value)  

d_maxAcc_2 <- filter(pre_intervention_df, time > 7, time < 10, player_name == david)
d_maxAcc_2 <- max(d_maxAcc_2$Y_value)  

d_maxAcc_3 <- filter(pre_intervention_df, time > 12, time < 15, player_name == david)
d_maxAcc_3 <- max(d_maxAcc_3$Y_value)  

d_maxAcc_3 <- filter(pre_intervention_df, time > 17, time < 20, player_name == david)
d_maxAcc_3 <- max(d_maxAcc_3$Y_value)  

## Find max acceleration for each of Joellyn's attempts ##

ggplot(data = j_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

j_maxAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == joellyn)
j_maxAcc_1 <- max(j_maxAcc_1$Y_value)  

j_maxAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == joellyn)
j_maxAcc_2 <- max(j_maxAcc_2$Y_value)  

j_maxAcc_3 <- filter(pre_intervention_df, time > 20, time < 25, player_name == joellyn)
j_maxAcc_3 <- max(j_maxAcc_3$Y_value)  

j_maxAcc_3 <- filter(pre_intervention_df, time > 40, time < 45, player_name == joellyn)
j_maxAcc_3 <- max(j_maxAcc_3$Y_value)  

## Find max acceleration for each of Shu-Yi's attempts ##

ggplot(data = s_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

s_maxAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == shuyi)
s_maxAcc_1 <- max(s_maxAcc_1$Y_value)  

s_maxAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == shuyi)
s_maxAcc_2 <- max(s_maxAcc_2$Y_value)  

s_maxAcc_3 <- filter(pre_intervention_df, time > 15, time < 20, player_name == shuyi)
s_maxAcc_3 <- max(s_maxAcc_3$Y_value)  

s_maxAcc_3 <- filter(pre_intervention_df, time > 25, time < 30, player_name == shuyi)
s_maxAcc_3 <- max(s_maxAcc_3$Y_value)  

## Find max acceleration for each of Yiwei's attempts ##

ggplot(data = y_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

y_maxAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == yiwei)
y_maxAcc_1 <- max(y_maxAcc_1$Y_value)  

y_maxAcc_2 <- filter(pre_intervention_df, time > 5, time < 10, player_name == yiwei)
y_maxAcc_2 <- max(y_maxAcc_2$Y_value)  

y_maxAcc_3 <- filter(pre_intervention_df, time > 10, time < 12, player_name == yiwei)
y_maxAcc_3 <- max(y_maxAcc_3$Y_value)  

y_maxAcc_3 <- filter(pre_intervention_df, time > 12, time < 15, player_name == yiwei)
y_maxAcc_3 <- max(y_maxAcc_3$Y_value)  

