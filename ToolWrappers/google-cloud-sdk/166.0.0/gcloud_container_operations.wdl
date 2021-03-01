version 1.0

task GcloudContainerOperations {
  input {
    Int? zone
    String describe
    String list
    String wait
  }
  command <<<
    gcloud container operations \
      ~{describe} \
      ~{list} \
      ~{wait} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    zone: "The compute zone (e.g. us-central1-a) for the cluster. Overrides the\\ndefault compute/zone property value for this command invocation."
    describe: "Describe an operation."
    list: "List operations for container clusters."
    wait: "Poll an operation for completion."
  }
  output {
    File out_stdout = stdout()
  }
}