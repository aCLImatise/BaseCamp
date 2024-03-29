version 1.0

task Vcf2bedpl {
  input {
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bed_pl \
      ~{input_file_name} \
      ~{cg}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_name: ""
    cg: ""
  }
  output {
    File out_stdout = stdout()
  }
}