
library(circlize)

par(cex = 0.80, mar = c(0, 0, 0, 0))


mat <- read.csv(file = 'data/final.csv',row.names = 1, header= TRUE)
#mat <- read.csv(file = 'overlap22.csv')
mat

names = list('Fever',
             'Chills',
             'Cough',
             'Fatigue',
             'Shortness of breath',
             'Sore throat ',
             'Nasal congestion',
             'Diarrhea',
             'Vomiting',
             'Nausea',
             'Headache',
             'Myalgia',
             'Ageusia',
             'Confusion',
             'Chest pain',
             'Anosmia',
             'Cyanosis',
             'Hypersomnia')

grid.col = c("Fever" = "Darkorchid", "Chills" = "violet", "Cough" = "green", "Fatigue" = "blue",
             "Shortness of breath" = "orange", "Sore throat"  = "cyan", "Nasal congestion" = "cyan2", 
             "Diarrhea" = "blue", "Vomiting" = "aquamarine", "Nausea" = "Darkgreen", "Headache" = "blue4", 
             "Myalgia" = "deepskyblue", "Ageusia" = "violet", "Confusion" = "Lightgreen", "Chest pain" = "blue",
             "Anosmia" = "violet", "Cyanosis" = "green", "Hypersomnia" = "magenta")

ord = c('Fever',
        'Nasal congestion',
         'Cough',
        'Chills',
         'Fatigue',
        'Chest pain',
         'Sore throat ',
        'Shortness of breath',
         'Diarrhea',
        'Hypersomnia',
         'Vomiting',
         'Nausea',
         'Headache',
         'Myalgia',
         'Ageusia',
         'Confusion',
         'Anosmia',
         'Cyanosis')



matt = as.matrix(mat)
dim(matt)

rownames(matt) = names
colnames(matt) = names

matt


chordDiagram(matt,grid.col = grid.col,order = ord)

#circos.clear()

#chordDiagram(matt, grid.col = grid.col,scale=True)

circos.clear()




