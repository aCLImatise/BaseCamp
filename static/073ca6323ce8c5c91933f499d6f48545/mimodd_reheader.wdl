version 1.0

task MimoddReheader {
  input {
    String template
    String input_file
  }
  command <<<
    mimodd reheader \
      ~{template} \
      ~{input_file}
  >>>
  parameter_meta {
    template: "template SAM file providing header information"
    input_file: "input BAM file to reheader"
  }
  output {
    File out_stdout = stdout()
  }
}