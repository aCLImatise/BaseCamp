version 1.0

task Dbtell {
  input {
    Boolean? full
    File? outfile
    Boolean? server
  }
  command <<<
    dbtell \
      ~{if (full) then "-full" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (server) then "-server" else ""}
  >>>
  parameter_meta {
    full: "boolean    [N] The default behaviour is to report for\\nrelevant databases only basic information\\nfrom the EMBOSS database definition"
    outfile: "outfile    [stdout] Output file name"
    server: "string     The name of the server defined locally for\\nuse by EMBOSS. (Any string)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}