version 1.0

task SlicedimageChecksum {
  input {
    File? pretty
  }
  command <<<
    slicedimage checksum \
      ~{if (pretty) then "--pretty" else ""}
  >>>
  parameter_meta {
    pretty: "Pretty-print the output file"
  }
  output {
    File out_stdout = stdout()
    File out_pretty = "${in_pretty}"
  }
}