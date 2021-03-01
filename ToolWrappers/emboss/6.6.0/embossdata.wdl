version 1.0

task Embossdata {
  input {
    Boolean? show_all
    Boolean? outfile
    Boolean? reject
  }
  command <<<
    embossdata \
      ~{if (show_all) then "-showall" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (reject) then "-reject" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_all: "toggle     Show all potential EMBOSS data files"
    outfile: "outfile    [stdout] This specifies the name of the file\\nthat the results of a search for a file in\\nthe various data directories is written to.\\nBy default these results are written to the\\nscreen (stdout)."
    reject: "selection  [3, 5, 6] This specifies the names of the\\nsub-directories of the EMBOSS data directory\\nthat should be ignored when displaying data\\ndirectories."
  }
  output {
    File out_stdout = stdout()
  }
}