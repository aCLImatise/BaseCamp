version 1.0

task PyqiMakeoptparse {
  input {
    String? author
    String? email
    String? license
    Int? copyright
    Float? config_version
    String? credits
    String? an_existing_command
    String? command_module
    File? output_fp
  }
  command <<<
    pyqi make_optparse \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(license) then ("--license " +  '"' + license + '"') else ""} \
      ~{if defined(copyright) then ("--copyright " +  '"' + copyright + '"') else ""} \
      ~{if defined(config_version) then ("--config-version " +  '"' + config_version + '"') else ""} \
      ~{if defined(credits) then ("--credits " +  '"' + credits + '"') else ""} \
      ~{if defined(an_existing_command) then ("--command " +  '"' + an_existing_command + '"') else ""} \
      ~{if defined(command_module) then ("--command-module " +  '"' + command_module + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    author: "author/maintainer name [default: none]"
    email: "maintainer email address [default: none]"
    license: "license (e.g., BSD) [default: none]"
    copyright: "copyright (e.g., Copyright 2013, The pyqi project)\\n[default: none]"
    config_version: "version (e.g., 0.1) [default: none]"
    credits: "comma-separated list of other authors [default: none]"
    an_existing_command: "an existing Command [REQUIRED]"
    command_module: "the Command source module [REQUIRED]"
    output_fp: "output filepath to store generated optparse Python\\nconfiguration file [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}