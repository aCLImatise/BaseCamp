version 1.0

task _checktrans {
  input {
    Boolean? or_fml
  }
  command <<<
    _checktrans \
      ~{true="-orfml" false="" or_fml}
  >>>
  parameter_meta {
    or_fml: "integer    [100] Minimum ORF Length to report (Integer 1 or more)"
  }
}