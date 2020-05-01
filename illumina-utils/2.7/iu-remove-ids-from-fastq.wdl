version 1.0

task IuRemoveIdsFromFastq {
  input {
    String inputInputFastQ
    String idsIdsFilePath
    String delimiterDelimiter
    Boolean generateGenerateOutputForSurvivedOnly
    Boolean keepKeepIds
  }
  command <<<
    iu-remove-ids-from-fastq \
      ~{if defined(inputInputFastQ) then ("--input-fastq " +  '"' + inputInputFastQ + '"') else ""} \
      ~{if defined(idsIdsFilePath) then ("--ids-file-path " +  '"' + idsIdsFilePath + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--generate-output-for-survived-only" false="" generateGenerateOutputForSurvivedOnly} \
      ~{true="--keep-ids" false="" keepKeepIds}
  >>>
}