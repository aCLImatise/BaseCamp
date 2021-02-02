version 1.0

task Pyensembl {
  input {
    Boolean? overwrite
  }
  command <<<
    pyensembl \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  parameter_meta {
    overwrite: "Force download and indexing even if files already\\nexist locally\\n"
  }
  output {
    File out_stdout = stdout()
  }
}