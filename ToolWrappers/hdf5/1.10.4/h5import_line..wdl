version 1.0

task H5importLine {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import line_ \
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