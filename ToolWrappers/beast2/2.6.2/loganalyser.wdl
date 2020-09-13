version 1.0

task Loganalyser {
  input {
    String? burnin
    File? percentage_log_file
    File? one_line
    String? quiet
    Boolean? help
    String? this_message
  }
  command <<<
    loganalyser \
      ~{if defined(burnin) then ("-burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(percentage_log_file) then ("-b " +  '"' + percentage_log_file + '"') else ""} \
      ~{if defined(one_line) then ("-oneline " +  '"' + one_line + '"') else ""} \
      ~{if defined(quiet) then ("-quiet " +  '"' + quiet + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(this_message) then ("-h " +  '"' + this_message + '"') else ""}
  >>>
  parameter_meta {
    burnin: ""
    percentage_log_file: "percentage of log file to disregard, default 10"
    one_line: "only one line of output per file.\\nHeader is generated from the first file only.\\n(Implies quiet mode.)"
    quiet: "mode.  Avoid printing status updates to stderr."
    help: ""
    this_message: "this message"
  }
  output {
    File out_stdout = stdout()
    File out_one_line = "${in_one_line}"
  }
}