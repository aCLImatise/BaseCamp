version 1.0

task Lwpmirror {
  input {
    Boolean? print_version_number
    String? set_timeout_value
    Boolean? var_2
    Boolean? more_options
    Boolean? var_4
    String url
    File file
  }
  command <<<
    lwp_mirror \
      ~{url} \
      ~{file} \
      ~{if (print_version_number) then "-v" else ""} \
      ~{if defined(set_timeout_value) then ("-t " +  '"' + set_timeout_value + '"') else ""} \
      ~{if (var_2) then "-options" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (var_4) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    print_version_number: "print version number of program"
    set_timeout_value: "Set timeout value"
    var_2: ""
    more_options: ""
    var_4: ""
    url: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}