version 1.0

task FioRm {
  input {
    String? layer
    String var_input
  }
  command <<<
    fio rm \
      ~{var_input} \
      ~{if defined(layer) then ("--layer " +  '"' + layer + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    layer: "Name of layer to remove."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}