version 1.0

task Nextflow {
  input {
    Boolean? use_specified_files
    Boolean? set_jvm_properties
    Boolean? bg
    Boolean? config
    Boolean? docker_ize
    Boolean? log
    Boolean? quiet
    Boolean? syslog
    Boolean? version
  }
  command <<<
    nextflow \
      ~{if (use_specified_files) then "-C" else ""} \
      ~{if (set_jvm_properties) then "-D" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (config) then "-config" else ""} \
      ~{if (docker_ize) then "-dockerize" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (syslog) then "-syslog" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    use_specified_files: "Use the specified configuration file(s) overriding any defaults"
    set_jvm_properties: "Set JVM properties"
    bg: "Execute nextflow in background"
    config: "Add the specified file to configuration set"
    docker_ize: "Launch nextflow via Docker (experimental)"
    log: "Set nextflow log file path"
    quiet: "Do not print information messages"
    syslog: "Send logs to syslog server (eg. localhost:514)"
    version: "Print the program version"
  }
  output {
    File out_stdout = stdout()
  }
}