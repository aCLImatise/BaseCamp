version 1.0

task H5importSTD {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import STD \
      ~{h_five_import} \
      ~{elp}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    h_five_import: ""
    elp: ""
  }
  output {
    File out_stdout = stdout()
  }
}