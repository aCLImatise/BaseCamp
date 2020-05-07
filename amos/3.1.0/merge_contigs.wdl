version 1.0

task MergeContigs {
  input {
    Boolean aA
  }
  command <<<
    merge-contigs \
      ~{true="-a" false="" aA}
  >>>
}