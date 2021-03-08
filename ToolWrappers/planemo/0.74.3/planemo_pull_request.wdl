version 1.0

task PlanemoPullRequest {
  input {
    String? message
    String project
  }
  command <<<
    planemo pull_request \
      ~{project} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    message: "Message describing the pull request to create."
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}