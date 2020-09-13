version 1.0

task H5importCHUNKEDDIMENSIONSIZES {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import CHUNKED_DIMENSION_SIZES \
      ~{h_five_import} \
      ~{elp}
  >>>
  parameter_meta {
    h_five_import: ""
    elp: ""
  }
  output {
    File out_stdout = stdout()
  }
}