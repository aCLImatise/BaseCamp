version 1.0

task SingularityInspect {
  input {
    Boolean? app
    Boolean? labels
    Boolean? def_file
    Boolean? run_script
    Boolean? test
    String? environment
    Boolean? json
    Boolean? help_file
    String singularity
  }
  command <<<
    singularity inspect \
      ~{singularity} \
      ~{true="--app" false="" app} \
      ~{true="--labels" false="" labels} \
      ~{true="--deffile" false="" def_file} \
      ~{true="--runscript" false="" run_script} \
      ~{true="--test" false="" test} \
      ~{if defined(environment) then ("--environment " +  '"' + environment + '"') else ""} \
      ~{true="--json" false="" json} \
      ~{true="--helpfile" false="" help_file}
  >>>
  parameter_meta {
    app: "Inspect an application specified in the container"
    labels: "Show the labels associated with the image (default)"
    def_file: "Show the Singularity recipe file that was used to generate the image"
    run_script: "Show the runscript for the image"
    test: "Show the test script for the image"
    environment: "the environment settings for the image"
    json: "Print structured json instead of sections"
    help_file: "Inspect the runscript helpfile, if exists"
    singularity: ""
  }
}