version 1.0

task Report.pl {
  input {
    String merge
    String multiple
    String taxonomy
    String profile
    File files
    Int into
    String one
    String table_dot
  }
  command <<<
    report.pl \
      ~{merge} \
      ~{multiple} \
      ~{taxonomy} \
      ~{profile} \
      ~{files} \
      ~{into} \
      ~{one} \
      ~{table_dot}
  >>>
  parameter_meta {
    merge: ""
    multiple: ""
    taxonomy: ""
    profile: ""
    files: ""
    into: ""
    one: ""
    table_dot: ""
  }
}