version 1.0

task H5importCOMPRESSIONPARAM {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import COMPRESSION_PARAM \
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