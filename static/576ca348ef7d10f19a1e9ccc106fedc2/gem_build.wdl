version 1.0

task GemBuild {
  input {
    Boolean? force
    Boolean? _verbose_set
    Boolean? quiet
    File? config_file
    Boolean? backtrace
    Boolean? debug
    String gem_spec_file
  }
  command <<<
    gem build \
      ~{gem_spec_file} \
      ~{if (force) then "--force" else ""} \
      ~{if (_verbose_set) then "-V" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "skip validation of the spec"
    _verbose_set: ", --[no-]verbose               Set the verbose level of output"
    quiet: "Silence commands"
    config_file: "Use this config file instead of default"
    backtrace: "Show stack backtrace on errors"
    debug: "Turn on Ruby debugging"
    gem_spec_file: "gemspec file name to build a gem for"
  }
  output {
    File out_stdout = stdout()
  }
}