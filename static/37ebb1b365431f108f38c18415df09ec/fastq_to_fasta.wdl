version 1.0

task FastqToFasta.py {
  input {
    Boolean infoInfo
    File outputOutput
    Boolean nNKeep
    Boolean gzipGzip
    Boolean bzipBzip
    String? inputInputSequence
  }
  command <<<
    fastq-to-fasta.py \
      ~{inputInputSequence} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--n_keep" false="" nNKeep} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}