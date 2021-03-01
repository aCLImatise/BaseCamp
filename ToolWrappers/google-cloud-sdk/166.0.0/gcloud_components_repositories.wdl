version 1.0

task GcloudComponentsRepositories {
  input {
    String add
    String list
    String remove
  }
  command <<<
    gcloud components repositories \
      ~{add} \
      ~{list} \
      ~{remove}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add: "Add a new Trusted Tester component repository."
    list: "List any Trusted Tester component repositories you have registered."
    remove: "Remove a registered Trusted Test component repository."
  }
  output {
    File out_stdout = stdout()
  }
}