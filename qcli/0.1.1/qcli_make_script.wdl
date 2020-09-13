version 1.0

task QcliMakeScript {
  input {
    Boolean? verbose
    String? author_name
    String? author_email
    Int? copyright
    File? output_fp
  }
  command <<<
    qcli_make_script \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(author_name) then ("--author_name " +  '"' + author_name + '"') else ""} \
      ~{if defined(author_email) then ("--author_email " +  '"' + author_email + '"') else ""} \
      ~{if defined(copyright) then ("--copyright " +  '"' + copyright + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    author_name: "The script author's (probably you) name to be included\\nin the header variables. This will typically need to\\nbe enclosed  in quotes to handle spaces.\\n[default:AUTHOR_NAME]"
    author_email: "The script author's (probably you) e-mail address to\\nbe included in the header variables.\\n[default:AUTHOR_EMAIL]"
    copyright: "The copyright information to be included in the header\\nvariables. [default:Copyright 2013, The BiPy project]"
    output_fp: "The output filepath. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}