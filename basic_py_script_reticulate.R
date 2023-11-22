library(reticulate)
# py_install('scikit-learn')
scikit_learn <- import("sklearn.ensemble")

# Creazione di un modello RandomForestClassifier
clf <- scikit_learn$RandomForestClassifier(n_estimators = as.integer(100))

# Preparazione dei dati (assumendo che i tuoi dati siano già pronti)
X <- matrix(rnorm(100 * 4), ncol = 4)
y <- sample(0:1, 100, replace = TRUE)

# Addestramento del modello
clf$fit(X, y)

# Utilizzo del modello per fare previsioni
predictions <- clf$predict(X)