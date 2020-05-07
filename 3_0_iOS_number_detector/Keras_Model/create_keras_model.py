from keras.models import Sequential
from keras.layers import Dense, Conv2D, Flatten, MaxPooling2D
from sklearn import datasets
from sklearn.model_selection import train_test_split


digits = datasets.load_digits()
X = digits["images"]
y = digits["target"]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.1)

X_train = X_train.reshape(1617,8,8,1)
X_test = X_test.reshape(180,8,8,1)

model = Sequential()
model.add(Conv2D(32,3,3, activation="relu", input_shape=(8,8,1)))
model.add(MaxPooling2D(pool_size=(2 , 2)))
model.add(Flatten())
model.add(Dense(units=128,activation="relu"))
model.add(Dense(units=10,activation="softmax"))

model.compile(optimizer = 'adam', loss = 'sparse_categorical_crossentropy', metrics = ['accuracy'])

model.fit(X_train,y_train,epochs=10)

model.save("numbers_model.model")
