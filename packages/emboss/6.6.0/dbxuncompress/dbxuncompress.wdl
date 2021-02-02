version 1.0

task Dbxuncompress {
  input {
    File? outfile
    Boolean? index_dir
  }
  command <<<
    dbxuncompress \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (index_dir) then "-indexdir" else ""}
  >>>
  parameter_meta {
    outfile: "outfile    [*.dbxuncompress] Output file name"
    index_dir: "directory  Index directory (optional)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}