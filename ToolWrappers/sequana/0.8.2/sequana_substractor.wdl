version 1.0

task SequanaSubstractor {
  input {
    String reads
  }
  command <<<
    sequana_substractor \
      ~{reads}
  >>>
  parameter_meta {
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}