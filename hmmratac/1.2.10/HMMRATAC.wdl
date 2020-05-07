version 1.0

task HMMRATAC {
  input {
    Boolean bB
    Boolean iI
    Boolean gG
    File modelModel
    Boolean modelModelOnly
    Int maxMaxTrain
    Boolean removeRemoveDuplicates
    Boolean printPrintExclude
    Boolean printPrintTrain
    String randomRandomSeed
    String thresholdThreshold
  }
  command <<<
    HMMRATAC \
      ~{true="-b" false="" bB} \
      ~{true="-i" false="" iI} \
      ~{true="-g" false="" gG} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{true="--modelonly" false="" modelModelOnly} \
      ~{if defined(maxMaxTrain) then ("--maxTrain " +  '"' + maxMaxTrain + '"') else ""} \
      ~{true="--removeDuplicates" false="" removeRemoveDuplicates} \
      ~{true="--printExclude" false="" printPrintExclude} \
      ~{true="--printTrain" false="" printPrintTrain} \
      ~{if defined(randomRandomSeed) then ("--randomSeed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}