version 1.0

task Tfm {
  input {
    Boolean? outfile
    Boolean? more
    File file
  }
  command <<<
    tfm \
      ~{file} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (more) then "-more" else ""}
  >>>
  parameter_meta {
    outfile: "outfile    [stdout] Program documentation text output"
    more: "boolean    [@(!$(html))] This uses the standard UNIX\\nutility 'more' to display the text\\npage-by-page, waiting for you to read one\\nscreen-full before going on to the next\\npage. When you have finished reading a page,\\npress the SPACE bar to proceed to the next\\npage."
    file: "-html               boolean    [N] This will format the output for"
  }
  output {
    File out_stdout = stdout()
  }
}