# логический вектор
air_fltr <- stackloss$Air.Flow <= 60
# отобранные значения концентрации азотной кислоты
acid_subset <- stackloss$Acid.Conc [air_fltr]
# частоты уникальных значений
acid_concs <- table (acid_subset)
# логический вектор
temp_fltr <- 20 <= stackloss$Water.Temp & 25 >= stackloss$Water.Temp
# средняя потеря аммиака (stack.loss) в этом диапазоне температур?
mean_stack_20_25 <- mean (stackloss$stack.loss[temp_fltr])