version 1.0

task Installvst {
  input {
    String vs_template_file
    String destination_path
  }
  command <<<
    installvst \
      ~{vs_template_file} \
      ~{destination_path}
  >>>
  parameter_meta {
    vs_template_file: ""
    destination_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}