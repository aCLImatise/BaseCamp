version 1.0

task Checkqc {
  input {
    File? config
    Boolean? json
    String? downgrade_errors
    Boolean? use_closest_read_length
    String run_folder
  }
  command <<<
    checkqc \
      ~{run_folder} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--json" false="" json} \
      ~{if defined(downgrade_errors) then ("--downgrade-errors " +  '"' + downgrade_errors + '"') else ""} \
      ~{true="--use-closest-read-length" false="" use_closest_read_length}
  >>>
  parameter_meta {
    config: "Path to the checkQC configuration file"
    json: "Print the results of the run as json to stdout"
    downgrade_errors: "Downgrade errors to warnings for a specific handler, can be used multiple times"
    use_closest_read_length: "Use the closest read length if the read length used isn't specified in the config"
    run_folder: ""
  }
}