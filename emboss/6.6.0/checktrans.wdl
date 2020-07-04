version 1.0

task Checktrans {
  input {
    Boolean? or_fml
  }
  command <<<
    checktrans \
      ~{true="-orfml" false="" or_fml}
  >>>
  parameter_meta {
    or_fml: "integer    [100] Minimum ORF Length to report (Integer 1 or more)"
  }
}