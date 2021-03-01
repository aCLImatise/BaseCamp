version 1.0

task H5importOUTPUTARCHITECTURE {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import OUTPUT_ARCHITECTURE \
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