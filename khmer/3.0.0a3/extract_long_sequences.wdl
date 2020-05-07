version 1.0

task ExtractLongSequences.py {
  input {
    Boolean infoInfo
    String outputOutput
    Int lengthLength
    Boolean gzipGzip
    Boolean bzipBzip
    String? inputInputFilenames
  }
  command <<<
    extract-long-sequences.py \
      ~{inputInputFilenames} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}