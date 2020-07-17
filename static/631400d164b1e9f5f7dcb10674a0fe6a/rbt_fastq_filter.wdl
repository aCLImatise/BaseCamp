version 1.0

task RbtFastqFilter {
  input {
    String ids
  }
  command <<<
    rbt fastq-filter \
      ~{ids}
  >>>
  parameter_meta {
    ids: ""
  }
}