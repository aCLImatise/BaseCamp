version 1.0

task FastaUtilsSplit {
  input {
    String prefixPrefix
    Int numberNumber
    Boolean gzipGzip
  }
  command <<<
    fasta-utils split \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip}
  >>>
}