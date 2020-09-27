version 1.0

task Yank {
  input {
    Boolean? new_file
  }
  command <<<
    yank \
      ~{if (new_file) then "-newfile" else ""}
  >>>
  parameter_meta {
    new_file: "boolean    [N] Overwrite existing output file"
  }
  output {
    File out_stdout = stdout()
  }
}