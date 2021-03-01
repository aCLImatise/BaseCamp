version 1.0

task Sailfish {
  input {
    Boolean? print_version_string
    Boolean? no_version_check
  }
  command <<<
    sailfish \
      ~{if (print_version_string) then "-v" else ""} \
      ~{if (no_version_check) then "--no-version-check" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_version_string: "[ --version ]      print version string"
    no_version_check: "don't check with the server to see if this is the\\nlatest version"
  }
  output {
    File out_stdout = stdout()
  }
}