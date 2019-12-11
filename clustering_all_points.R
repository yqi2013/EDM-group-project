# Must run 'pre_intervention.R' prior to running this code!
# Must run 'myplclust_function.R' prior to running this code!

library(tidyverse)

## Create new data.frame with only relevant data

D1 <- select(pre_intervention_df, time, Y_value, player_name)

# Filter out Alysandra and add a column with her score (1 = Novice, 2 = Expert)
DA <- filter(D1, player_name == alysandra)
DA$score <- 1

# Filter out David and add a column with his score (1 = Novice, 2 = Expert)
DD <- filter(D1, player_name == david)
DD$score <- 2

# Filter out Joellyn and add a column with her score (1 = Novice, 2 = Expert)
DJ <- filter(D1, player_name == joellyn)
DJ$score <- 1

# Filter out Shu-Yi and add a column with her score (1 = Novice, 2 = Expert)
DS <- filter(D1, player_name == shuyi)
DS$score <- 1

# Filter out Yiwei and add a column with her score (1 = Novice, 2 = Expert)
DY <- filter(D1, player_name == yiwei)
DY$score <- 1

# Add score column to D1

D1 <- rbind(DA, DD, DJ, DS, DY)

# Order the columns so player_name is at the end

D1 <- select(D1, time, Y_value, score, player_name)

## Create a Cluster ##

# We'll focus on 3 dimensions of our data: time, Y-acceleration, and score. 
# Create a distance matrix, mdist, of the time, Y_value, and score columns of D1

mdist <- dist(D1[,2:3])

# Now create the variable hclustering by calling the R command hclust 
# and passing it mdist as an argument.
# This will use the Euclidean distance as its default metric.

hclustering <- hclust(mdist)

# Now call the pretty plotting function (from swirl()) myplclust with 2 arguments. 
# The first is hclustering, and the second is lab.col = unclass(sub1$activity).

myplclust(hclustering, lab.col = unclass(D1$player_name))


