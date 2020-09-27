version 1.0

task Jdeprscan {
  input {
    File? class_path
    Boolean? _listrelease
    Boolean? _verboseversion
  }
  command <<<
    jdeprscan \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if (_listrelease) then "-l" else ""} \
      ~{if (_verboseversion) then "-v" else ""}
  >>>
  parameter_meta {
    class_path: "--for-removal\\n--full-version"
    _listrelease: "--list\\n--release 6|7|8|9|10|11"
    _verboseversion: "--verbose\\n--version"
  }
  output {
    File out_stdout = stdout()
  }
}