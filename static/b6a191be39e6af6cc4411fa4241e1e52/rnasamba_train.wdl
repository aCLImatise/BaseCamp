version 1.0

task RnasambaTrain {
  input {
    String earlyEarlyStopping
    String batchBatchSize
    String epochsEpochs
    Boolean vV
    String? outputOutputFile
    String? codingCodingFile
    String? noncodingNoncodingFile
  }
  command <<<
    rnasamba train \
      ~{outputOutputFile} \
      ~{if defined(earlyEarlyStopping) then ("--early_stopping " +  '"' + earlyEarlyStopping + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(epochsEpochs) then ("--epochs " +  '"' + epochsEpochs + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{codingCodingFile} \
      ~{noncodingNoncodingFile}
  >>>
}