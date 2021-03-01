version 1.0

task Checkqc {
  input {
    File? config
    Boolean? json
    String? downgrade_errors
    Boolean? use_closest_read_length
    File file_dot
  }
  command <<<
    checkqc \
      ~{file_dot} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if defined(downgrade_errors) then ("--downgrade-errors " +  '"' + downgrade_errors + '"') else ""} \
      ~{if (use_closest_read_length) then "--use-closest-read-length" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Path to the checkQC configuration file"
    json: "Print the results of the run as json to stdout"
    downgrade_errors: "Downgrade errors to warnings for a specific\\nhandler, can be used multiple times"
    use_closest_read_length: "Use the closest read length if the read length\\nused isn't specified in the config"
    file_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}