version 1.0

task RbtFastqFilter {
  input {
    String? idsIds
  }
  command <<<
    rbt fastq-filter \
      ~{idsIds}
  >>>
}