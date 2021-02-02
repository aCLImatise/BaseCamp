version 1.0

task Cacheensembl {
  input {
    Boolean? servername
    File? outfile
    Float six_dot_six_dot_zero_dot_zero
    File file
  }
  command <<<
    cacheensembl \
      ~{six_dot_six_dot_zero_dot_zero} \
      ~{file} \
      ~{if (servername) then "-servername" else ""} \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  parameter_meta {
    servername: "string     Server name (Any string)"
    outfile: "outfile    [stdout] Output file name"
    six_dot_six_dot_zero_dot_zero: "Standard (Mandatory) qualifiers:"
    file: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}