version 1.0

task DriveIssue {
  input {
    String? body
    String? title
  }
  command <<<
    drive issue \
      ~{if defined(body) then ("-body " +  '"' + body + '"') else ""} \
      ~{if defined(title) then ("-title " +  '"' + title + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    body: "the detailed description of the issue being filed"
    title: "the title of the issue being filed\\n"
  }
  output {
    File out_stdout = stdout()
  }
}