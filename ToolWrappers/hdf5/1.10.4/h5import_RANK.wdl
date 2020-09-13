version 1.0

task H5importRANK {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import RANK \
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