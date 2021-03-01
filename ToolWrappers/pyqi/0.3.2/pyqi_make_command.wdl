version 1.0

task PyqiMakecommand {
  input {
    String? author
    String? email
    String? license
    Int? copyright
    Float? command_version
    String? credits
    Boolean? test_code
    String? name
    File? output_fp
  }
  command <<<
    pyqi make_command \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(license) then ("--license " +  '"' + license + '"') else ""} \
      ~{if defined(copyright) then ("--copyright " +  '"' + copyright + '"') else ""} \
      ~{if defined(command_version) then ("--command-version " +  '"' + command_version + '"') else ""} \
      ~{if defined(credits) then ("--credits " +  '"' + credits + '"') else ""} \
      ~{if (test_code) then "--test-code" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
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
    command_version: "version (e.g., 0.1) [default: none]"
    credits: "comma-separated list of other authors [default: none]"
    test_code: "create stubbed out unit test code [default: False]"
    name: "the name of the Command [REQUIRED]"
    output_fp: "output filepath to store generated Python code\\n[REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}