version 1.0

task FastqKmers {
  input {
    String sizeSize
  }
  command <<<
    fastq-kmers \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""}
  >>>
}