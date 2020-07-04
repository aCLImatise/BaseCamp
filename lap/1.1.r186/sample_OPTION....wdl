version 1.0

task SampleOPTION... {
  input {
    String sample
  }
  command <<<
    sample OPTION... \
      ~{sample}
  >>>
  parameter_meta {
    sample: ""
  }
}