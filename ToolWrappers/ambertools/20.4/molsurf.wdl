version 1.0

task Molsurf {
  input {
    File pqr_file
    String probe_radius
  }
  command <<<
    molsurf \
      ~{pqr_file} \
      ~{probe_radius}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pqr_file: ""
    probe_radius: ""
  }
  output {
    File out_stdout = stdout()
  }
}