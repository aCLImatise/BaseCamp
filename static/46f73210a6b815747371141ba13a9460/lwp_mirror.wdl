version 1.0

task LwpMirror {
  input {
    Boolean? print_version_number
    String? set_timeout_value
    Boolean? options
    String url
    File file
  }
  command <<<
    lwp-mirror \
      ~{url} \
      ~{file} \
      ~{true="-v" false="" print_version_number} \
      ~{if defined(set_timeout_value) then ("-t " +  '"' + set_timeout_value + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    print_version_number: "print version number of program"
    set_timeout_value: "Set timeout value"
    options: ""
    url: ""
    file: ""
  }
}