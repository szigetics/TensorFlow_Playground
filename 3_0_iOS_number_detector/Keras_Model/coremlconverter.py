from keras.models import load_model
import coremltools

output_labels = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
numbers_model = coremltools.converters.keras.convert('numbers_model.model', input_names=['image'], output_names=['output'],
                                                   class_labels=output_labels, image_input_names='image')

numbers_model.save('numbers_model.mlmodel')
