version 1.0

task OpentargetsValidator {
  input {
    File? schema
    String? log_level
    Int? log_lines
    String data_source_file
  }
  command <<<
    opentargets_validator \
      ~{data_source_file} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_lines) then ("--log-lines " +  '"' + log_lines + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/opentargets-validator:0.7.0--py_0"
  }
  parameter_meta {
    schema: "set the schema file to use"
    log_level: "set the log level def: WARNING"
    log_lines: "number of log errors to print out [no longer\\nsupported]\\n"
    data_source_file: "The prefix to prepend default: STDIN"
  }
  output {
    File out_stdout = stdout()
  }
}