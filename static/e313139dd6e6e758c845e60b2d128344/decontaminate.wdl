version 1.0

task Decontaminate.sh {
  input {
    String reads
  }
  command <<<
    decontaminate.sh \
      ~{reads}
  >>>
  parameter_meta {
    reads: ""
  }
}