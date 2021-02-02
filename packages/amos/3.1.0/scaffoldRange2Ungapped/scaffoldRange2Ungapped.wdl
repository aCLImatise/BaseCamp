version 1.0

task ScaffoldRange2Ungapped {
  input {
    Boolean? bank
    Boolean? file
  }
  command <<<
    scaffoldRange2Ungapped \
      ~{if (bank) then "-bank" else ""} \
      ~{if (file) then "-file" else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    file: "file containing list of gapped coordinates in the following form, one per line:"
  }
  output {
    File out_stdout = stdout()
  }
}