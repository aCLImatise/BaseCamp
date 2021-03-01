version 1.0

task ScfInfo {
  input {
    String scf_filename
  }
  command <<<
    scf_info \
      ~{scf_filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scf_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}