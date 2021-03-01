version 1.0

task Filterstage1prl {
  input {
    String output_dot
    String executable_dot
  }
  command <<<
    filter_stage_1_prl \
      ~{output_dot} \
      ~{executable_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dot: "SYNOPSIS"
    executable_dot: "DESCRIPTION"
  }
  output {
    File out_stdout = stdout()
  }
}