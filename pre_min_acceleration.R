# Determined which time intervals to search by finding the four minimums on the vizualization
# Must run 'pre_intervention.R' prior to running this code!

## Find min acceleration for each of Alysandra's attempts ##

a_minAcc_1 <- filter(pre_intervention_df, time < 10, player_name == alysandra)
a_minAcc_1 <- min(a_minAcc_1$Y_value)  

a_minAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == alysandra)
a_minAcc_2 <- min(a_minAcc_2$Y_value)  

a_minAcc_3 <- filter(pre_intervention_df, time > 20, time < 25, player_name == alysandra)
a_minAcc_3 <- min(a_minAcc_3$Y_value)  

a_minAcc_4 <- filter(pre_intervention_df, time > 25, time < 30, player_name == alysandra)
a_minAcc_4 <- min(a_minAcc_4$Y_value)  

# Create a data frame for the min acceleration

a_minAcc <- data.frame(a_minAcc_1, a_minAcc_2, a_minAcc_3, a_minAcc_4 )

# Standardize column names

colnames(a_minAcc) <- c("minAcc_1", "minAcc_2", "minAcc_3", "minAcc_4")

# Add a column for player name

alysandra <- rep("alysandra", length(a_minAcc$minAcc_1))
a_minAcc$player_name <- alysandra


## Find min acceleration for each of David's attempts ##

ggplot(data = d_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

d_minAcc_1 <- filter(pre_intervention_df, time > 2, time < 5, player_name == david)
d_minAcc_1 <- min(d_minAcc_1$Y_value)  

d_minAcc_2 <- filter(pre_intervention_df, time > 7, time < 10, player_name == david)
d_minAcc_2 <- min(d_minAcc_2$Y_value)  

d_minAcc_3 <- filter(pre_intervention_df, time > 12, time < 15, player_name == david)
d_minAcc_3 <- min(d_minAcc_3$Y_value)  

d_minAcc_4 <- filter(pre_intervention_df, time > 17, time < 20, player_name == david)
d_minAcc_4 <- min(d_minAcc_4$Y_value)  

# Create a data frame for the min acceleration

d_minAcc <- data.frame(d_minAcc_1, d_minAcc_2, d_minAcc_3, d_minAcc_4 )

# Standardize column names

colnames(d_minAcc) <- c("minAcc_1", "minAcc_2", "minAcc_3", "minAcc_4")

# Add a column for player name

david <- rep("david", length(d_minAcc$minAcc_1))
d_minAcc$player_name <- david

## Find min acceleration for each of Joellyn's attempts ##

ggplot(data = j_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

j_minAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == joellyn)
j_minAcc_1 <- min(j_minAcc_1$Y_value)  

j_minAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == joellyn)
j_minAcc_2 <- min(j_minAcc_2$Y_value)  

j_minAcc_3 <- filter(pre_intervention_df, time > 20, time < 25, player_name == joellyn)
j_minAcc_3 <- min(j_minAcc_3$Y_value)  

j_minAcc_4 <- filter(pre_intervention_df, time > 40, time < 45, player_name == joellyn)
j_minAcc_4 <- min(j_minAcc_4$Y_value)  

# Create a data frame for the min acceleration

j_minAcc <- data.frame(j_minAcc_1, j_minAcc_2, j_minAcc_3, j_minAcc_4 )

# Standardize column names

colnames(j_minAcc) <- c("minAcc_1", "minAcc_2", "minAcc_3", "minAcc_4")

# Add a column for player name

joellyn <- rep("joellyn", length(j_minAcc$minAcc_1))
j_minAcc$player_name <- joellyn

## Find min acceleration for each of Shu-Yi's attempts ##

ggplot(data = s_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

s_minAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == shuyi)
s_minAcc_1 <- min(s_minAcc_1$Y_value)  

s_minAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == shuyi)
s_minAcc_2 <- min(s_minAcc_2$Y_value)  

s_minAcc_3 <- filter(pre_intervention_df, time > 15, time < 20, player_name == shuyi)
s_minAcc_3 <- min(s_minAcc_3$Y_value)  

s_minAcc_4 <- filter(pre_intervention_df, time > 25, time < 30, player_name == shuyi)
s_minAcc_4 <- min(s_minAcc_4$Y_value)  

# Create a data frame for the min acceleration

s_minAcc <- data.frame(s_minAcc_1, s_minAcc_2, s_minAcc_3, s_minAcc_4 )

# Standardize column names

colnames(s_minAcc) <- c("minAcc_1", "minAcc_2", "minAcc_3", "minAcc_4")

# Add a column for player name

shuyi <- rep("shuyi", length(s_minAcc$minAcc_1))
s_minAcc$player_name <- shuyi

## Find min acceleration for each of Yiwei's attempts ##

ggplot(data = y_accm_pre, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

y_minAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == yiwei)
y_minAcc_1 <- min(y_minAcc_1$Y_value)  

y_minAcc_2 <- filter(pre_intervention_df, time > 5, time < 10, player_name == yiwei)
y_minAcc_2 <- min(y_minAcc_2$Y_value)  

y_minAcc_3 <- filter(pre_intervention_df, time > 10, time < 12, player_name == yiwei)
y_minAcc_3 <- min(y_minAcc_3$Y_value)  

y_minAcc_4 <- filter(pre_intervention_df, time > 12, time < 15, player_name == yiwei)
y_minAcc_4 <- min(y_minAcc_4$Y_value)  

# Create a data frame for the min acceleration

y_minAcc <- data.frame(y_minAcc_1, y_minAcc_2, y_minAcc_3, y_minAcc_4 )

# Standardize column names

colnames(y_minAcc) <- c("minAcc_1", "minAcc_2", "minAcc_3", "minAcc_4")

# Add a column for player name

yiwei <- rep("yiwei", length(y_minAcc$minAcc_1))
y_minAcc$player_name <- yiwei


## Row Bind all individual data frames ##

all_minAcc <- rbind(a_minAcc, d_minAcc, j_minAcc, s_minAcc, y_minAcc)

