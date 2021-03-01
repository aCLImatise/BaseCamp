version 1.0

task ScaffoldRange2Ungapped {
  input {
    Boolean? bank
    Boolean? file_containing_list
  }
  command <<<
    scaffoldRange2Ungapped \
      ~{if (bank) then "-bank" else ""} \
      ~{if (file_containing_list) then "-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank: "bank where assembly is stored"
    file_containing_list: "file containing list of gapped coordinates in the following form, one per line:"
  }
  output {
    File out_stdout = stdout()
  }
}