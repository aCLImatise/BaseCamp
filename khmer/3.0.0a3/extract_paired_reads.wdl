version 1.0

task ExtractPairedReads.py {
  input {
    Boolean infoInfo
    String outputOutputDir
    File outputOutputPaired
    File outputOutputSingle
    Boolean forceForce
    Boolean gzipGzip
    Boolean bzipBzip
  }
  command <<<
    extract-paired-reads.py \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputPaired) then ("--output-paired " +  '"' + outputOutputPaired + '"') else ""} \
      ~{if defined(outputOutputSingle) then ("--output-single " +  '"' + outputOutputSingle + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}