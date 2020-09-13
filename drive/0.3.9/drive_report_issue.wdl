version 1.0

task DriveReportissue {
  input {
    String? body
    Boolean? piped
    String? title
  }
  command <<<
    drive report_issue \
      ~{if defined(body) then ("-body " +  '"' + body + '"') else ""} \
      ~{if (piped) then "-piped" else ""} \
      ~{if defined(title) then ("-title " +  '"' + title + '"') else ""}
  >>>
  parameter_meta {
    body: "the detailed description of the issue being filed"
    piped: "get content in from standard input (stdin)"
    title: "the title of the issue being filed\\n"
  }
  output {
    File out_stdout = stdout()
  }
}