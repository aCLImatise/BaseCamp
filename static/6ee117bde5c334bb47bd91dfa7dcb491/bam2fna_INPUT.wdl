version 1.0

task Bam2fnaINPUT {
  input {
    String? outputOutput
  }
  command <<<
    bam2fna INPUT \
      ~{outputOutput}
  >>>
}