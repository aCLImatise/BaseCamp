version 1.0

task VarlociraptorPlotHelp {
  input {
    String for
    String more
    String information
    String try
  }
  command <<<
    varlociraptor plot help \
      ~{for} \
      ~{more} \
      ~{information} \
      ~{try}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:3.0.0--hd302352_0"
  }
  parameter_meta {
    for: ""
    more: ""
    information: ""
    try: ""
  }
  output {
    File out_stdout = stdout()
  }
}