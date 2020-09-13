version 1.0

task Checktrans {
  input {
    Boolean? or_fml
    String stops_dot
  }
  command <<<
    _checktrans \
      ~{stops_dot} \
      ~{if (or_fml) then "-orfml" else ""}
  >>>
  parameter_meta {
    or_fml: "integer    [100] Minimum ORF Length to report (Integer\\n1 or more)"
    stops_dot: "Advanced (Unprompted) qualifiers: (none)"
  }
  output {
    File out_stdout = stdout()
  }
}