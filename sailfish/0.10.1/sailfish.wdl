version 1.0

task Sailfish {
  input {
    Boolean? print_version_string
    Boolean? no_version_check
  }
  command <<<
    sailfish \
      ~{true="-v" false="" print_version_string} \
      ~{true="--no-version-check" false="" no_version_check}
  >>>
  parameter_meta {
    print_version_string: "[ --version ]      print version string"
    no_version_check: "don't check with the server to see if this is the  latest version"
  }
}