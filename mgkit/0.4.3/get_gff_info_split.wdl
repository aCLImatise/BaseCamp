version 1.0

task GetGffInfoSplit {
  input {
    String prefixPrefix
    Int numberNumber
    Boolean gzipGzip
  }
  command <<<
    get-gff-info split \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip}
  >>>
}