version 1.0

task Cachedbfetch {
  input {
    File? outfile
    File additional_optional_qualifiers
  }
  command <<<
    cachedbfetch \
      ~{additional_optional_qualifiers} \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "outfile    [stdout] Output file name"
    additional_optional_qualifiers: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}