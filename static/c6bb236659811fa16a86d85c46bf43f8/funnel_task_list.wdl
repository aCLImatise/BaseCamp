version 1.0

task FunnelTaskList {
  input {
    Boolean? all
    Int? page_size
    String? page_token
    String? state
    String? tag
    String? view
  }
  command <<<
    funnel task list \
      ~{if (all) then "--all" else ""} \
      ~{if defined(page_size) then ("--page-size " +  '"' + page_size + '"') else ""} \
      ~{if defined(page_token) then ("--page-token " +  '"' + page_token + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(view) then ("--view " +  '"' + view + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "List all tasks"
    page_size: "Page size"
    page_token: "Page token"
    state: "State filter"
    tag: "Tag filter. May be used multiple times to specify more than one tag"
    view: "Task view (default \\\"basic\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}