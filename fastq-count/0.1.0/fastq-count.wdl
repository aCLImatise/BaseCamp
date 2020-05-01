version 1.0

task FastqCount {
  input {
    String? r1fqR1fq
    String? r2fqR2fq
  }
  command <<<
    fastq-count \
      ~{r1fqR1fq} \
      ~{r2fqR2fq}
  >>>
}