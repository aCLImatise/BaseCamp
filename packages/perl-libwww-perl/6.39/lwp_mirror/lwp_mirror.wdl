version 1.0

task Lwpmirror {
  input {
    Boolean? print_version_number
    String? set_timeout_value
    Boolean? options
    String url
    File file
  }
  command <<<
    lwp_mirror \
      ~{url} \
      ~{file} \
      ~{if (print_version_number) then "-v" else ""} \
      ~{if defined(set_timeout_value) then ("-t " +  '"' + set_timeout_value + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    print_version_number: "print version number of program"
    set_timeout_value: "Set timeout value"
    options: ""
    url: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}