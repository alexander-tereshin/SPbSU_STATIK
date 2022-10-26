vec1 <- 1:6
vec2 <- c ('radio', 'newspaper', 'web-page', 'chat', 'tv', 'web-page')
vec3 <- c (0, 0, 1, 1, 0, 1)
dfr <- data.frame (id = vec1,
                  response = vec3,
                  medium = vec2,
                  stringsAsFactors = FALSE)
#В коде при создании dfr специально в явном виде записано stringsAsFactors = FALSE для совместимости решений из разных версий R. Раньше в версиях R <4.0 по умолчанию было stringsAsFactors = TRUE, и все текстовые переменные превращались в факторы (с дефолтными настройками, что не всегда удобно). В более новых версиях стало stringsAsFactors = FALSE.
dfr$response <- factor (dfr$response, levels = c(unique (dfr$response)), label = c ("No", "Yes"))