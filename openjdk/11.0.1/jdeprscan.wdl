version 1.0

task Jdeprscan {
  input {
    File? class_path
    Boolean? for_removal
    Boolean? full_version
    Boolean? _list
    Int? release
    Boolean? _verbose
  }
  command <<<
    jdeprscan \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if (for_removal) then "--for-removal" else ""} \
      ~{if (full_version) then "--full-version" else ""} \
      ~{if (_list) then "-l" else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (_verbose) then "-v" else ""}
  >>>
  parameter_meta {
    class_path: ""
    for_removal: ""
    full_version: ""
    _list: "--list"
    release: "|7|8|9|10|11"
    _verbose: "--verbose"
  }
  output {
    File out_stdout = stdout()
  }
}