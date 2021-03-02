version 1.0

task Dbxreport {
  input {
    File? outfile
    Boolean? index_dir
    Boolean? full_report
  }
  command <<<
    dbxreport \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (index_dir) then "-indexdir" else ""} \
      ~{if (full_report) then "-fullreport" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "outfile    [*.dbxreport] Output file name"
    index_dir: "directory  Index directory (optional)"
    full_report: "boolean    [N] Write full details to debug file"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}