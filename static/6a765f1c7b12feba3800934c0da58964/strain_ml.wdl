version 1.0

task StrainMl {
  input {
    Boolean optionsOptions
    String? mlMlTrain
    String? trainingTrainingSetFiles
  }
  command <<<
    strain_ml \
      ~{mlMlTrain} \
      ~{true="-options" false="" optionsOptions} \
      ~{trainingTrainingSetFiles}
  >>>
}