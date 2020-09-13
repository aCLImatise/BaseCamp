version 1.0

task Servertell {
  input {
    Boolean? full
    File? outfile
  }
  command <<<
    servertell \
      ~{if (full) then "-full" else ""} \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  parameter_meta {
    full: "boolean    [N] The default behaviour is to report for\\nrelevant servers only basic information from\\nthe EMBOSS server definition"
    outfile: "outfile    [stdout] Output file name"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}