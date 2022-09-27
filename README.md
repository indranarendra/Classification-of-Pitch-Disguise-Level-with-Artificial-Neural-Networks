Paper published in 2019. Link to the paper can be found <a href="https://ieeexplore.ieee.org/abstract/document/8697975">here</a>.</br>
Dataset used in the code can be downloaded <a href="https://www.kaggle.com/datasets/mfekadu/darpa-timit-acousticphonetic-continuous-speech/download?datasetVersionNumber=6">here</a>.

# Classification-of-Pitch-Disguise-Level-with-Artificial-Neural-Networks

Among different types of distortions, pitch disguise is one such distortion which greatly reduces the speaker recognition accuracy.

By identifying the level of pitch disguise, accuracy can be improved.

The main steps involved in level classification from pitch disguised speech are

----> Feature Extraction from the speech

----> Modelling

Database used: TIMIT database which consists of 6300 voice segments with the average duration of 3 seconds from 630 speakers.

Software used for pitch disguising: Audacity software.


# Pipeline for MFCC Feature Extraction
<img src="https://github.com/indranarendra/Classification-of-Pitch-Disguise-Level-with-Artificial-Neural-Networks/blob/master/MFCC.png">

# Algorithm for level classification using ANN.
<img src="https://github.com/indranarendra/Classification-of-Pitch-Disguise-Level-with-Artificial-Neural-Networks/blob/master/nnalg.PNG">

# Structure of the neural network
<img src="https://github.com/indranarendra/Classification-of-Pitch-Disguise-Level-with-Artificial-Neural-Networks/blob/master/h167.PNG">

# Level identification accuracy using ANN
<img src="https://github.com/indranarendra/Classification-of-Pitch-Disguise-Level-with-Artificial-Neural-Networks/blob/master/results1.png">

# Level identification accuracy for different trials for hidden layer size 167
<img src="https://github.com/indranarendra/Classification-of-Pitch-Disguise-Level-with-Artificial-Neural-Networks/blob/master/results2.png">

