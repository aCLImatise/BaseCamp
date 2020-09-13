version 1.0

task Embossversion {
  input {
    Boolean? full
    File? outfile
  }
  command <<<
    _embossversion \
      ~{if (full) then "-full" else ""} \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  parameter_meta {
    full: "boolean    Show all EMBOSS version information fields"
    outfile: "outfile    [stdout] EMBOSS version output file"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}