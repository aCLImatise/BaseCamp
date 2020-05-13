version 1.0

task PhiSpy.py {
  input {
    String makeMakeTrainingData
    String trainingTrainingSet
    Boolean listList
    Boolean eE
    String numberNumber
    String windowWindowSize
    String nonNonProphageGeneGaps
    String randomRandomForestTrees
    Boolean expandExpandSlope
    String kmKmErsType
    String outputOutputDir
    Boolean qtQt
    Boolean kK
    Boolean vV
    String? inInFile
  }
  command <<<
    PhiSpy.py \
      ~{inInFile} \
      ~{if defined(makeMakeTrainingData) then ("--make_training_data " +  '"' + makeMakeTrainingData + '"') else ""} \
      ~{if defined(trainingTrainingSet) then ("--training_set " +  '"' + trainingTrainingSet + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{true="-e" false="" eE} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(nonNonProphageGeneGaps) then ("--nonprophage_genegaps " +  '"' + nonNonProphageGeneGaps + '"') else ""} \
      ~{if defined(randomRandomForestTrees) then ("--randomforest_trees " +  '"' + randomRandomForestTrees + '"') else ""} \
      ~{true="--expand_slope" false="" expandExpandSlope} \
      ~{if defined(kmKmErsType) then ("--kmers_type " +  '"' + kmKmErsType + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="-qt" false="" qtQt} \
      ~{true="-k" false="" kK} \
      ~{true="-v" false="" vV}
  >>>
}