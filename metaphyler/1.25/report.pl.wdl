version 1.0

task Reportpl {
  input {
    String merge
    String multiple
    String taxonomy
    String profile
    String files
    String into
    String one
  }
  command <<<
    report_pl \
      ~{merge} \
      ~{multiple} \
      ~{taxonomy} \
      ~{profile} \
      ~{files} \
      ~{into} \
      ~{one}
  >>>
  parameter_meta {
    merge: ""
    multiple: ""
    taxonomy: ""
    profile: ""
    files: ""
    into: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
  }
}