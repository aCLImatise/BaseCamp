version 1.0

task Loganalyser {
  input {
    String? this_message
  }
  command <<<
    loganalyser \
      ~{if defined(this_message) then ("-h " +  '"' + this_message + '"') else ""}
  >>>
  parameter_meta {
    this_message: "this message"
  }
  output {
    File out_stdout = stdout()
  }
}