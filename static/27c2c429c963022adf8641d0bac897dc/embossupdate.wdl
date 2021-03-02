version 1.0

task Embossupdate {
  input {
    File? outfile
  }
  command <<<
    embossupdate \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "outfile    [stdout] EMBOSS update output file"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}