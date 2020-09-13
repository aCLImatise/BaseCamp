version 1.0

task Cacheebeyesearch {
  input {
    File? outfile
    File file
  }
  command <<<
    cacheebeyesearch \
      ~{file} \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  parameter_meta {
    outfile: "outfile    [stdout] Output file name"
    file: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}