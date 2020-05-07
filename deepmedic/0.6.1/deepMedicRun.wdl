version 1.0

task DeepMedicRun {
  input {
    String newNewModel
    String trainTrain
    String testTest
    String modelModel
    String devDev
    String prePreTrained
    Array[String]+ layersLayers
    Boolean resetResetOptimizer
  }
  command <<<
    deepMedicRun \
      ~{if defined(newNewModel) then ("-newModel " +  '"' + newNewModel + '"') else ""} \
      ~{if defined(trainTrain) then ("-train " +  '"' + trainTrain + '"') else ""} \
      ~{if defined(testTest) then ("-test " +  '"' + testTest + '"') else ""} \
      ~{if defined(modelModel) then ("-model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(devDev) then ("-dev " +  '"' + devDev + '"') else ""} \
      ~{if defined(prePreTrained) then ("-pretrained " +  '"' + prePreTrained + '"') else ""} \
      ~{if defined(layersLayers) then ("-layers " +  '"' + layersLayers + '"') else ""} \
      ~{true="-resetOptimizer" false="" resetResetOptimizer}
  >>>
}