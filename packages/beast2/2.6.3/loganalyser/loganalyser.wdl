version 1.0

task Loganalyser {
  input {
    File? burnin
    String? comma_separates_list
    File? one_line
    String? quiet
  }
  command <<<
    loganalyser \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(comma_separates_list) then ("-t " +  '"' + comma_separates_list + '"') else ""} \
      ~{if defined(one_line) then ("-oneline " +  '"' + one_line + '"') else ""} \
      ~{if defined(quiet) then ("-quiet " +  '"' + quiet + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0"
  }
  parameter_meta {
    burnin: "percentage of log file to disregard, default 10"
    comma_separates_list: "[,tag]+ comma separates list of tags to be processed. If nothing is specified all tags are processed and displayed."
    one_line: "only one line of output per file.\\nHeader is generated from the first file only.\\n(Implies quiet mode.)"
    quiet: "mode.  Avoid printing status updates to stderr."
  }
  output {
    File out_stdout = stdout()
    File out_one_line = "${in_one_line}"
  }
}