version 1.0

task Summarizecontam.sh {
  input {
    String input_files
    String out
  }
  command <<<
    summarizecontam.sh \
      ~{input_files} \
      ~{out}
  >>>
  parameter_meta {
    input_files: ""
    out: ""
  }
}