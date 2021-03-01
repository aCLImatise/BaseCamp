version 1.0

task Loganalyser {
  input {
    File? burnin
    File? one_line
    String? quiet
  }
  command <<<
    loganalyser \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(one_line) then ("-oneline " +  '"' + one_line + '"') else ""} \
      ~{if defined(quiet) then ("-quiet " +  '"' + quiet + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    burnin: "percentage of log file to disregard, default 10"
    one_line: "only one line of output per file.\\nHeader is generated from the first file only.\\n(Implies quiet mode.)"
    quiet: "mode.  Avoid printing status updates to stderr."
  }
  output {
    File out_stdout = stdout()
    File out_one_line = "${in_one_line}"
  }
}