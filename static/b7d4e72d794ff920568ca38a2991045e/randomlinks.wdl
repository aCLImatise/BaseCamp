version 1.0

task Randomlinks {
  input {
    String? karyotype
    String? ruleset
  }
  command <<<
    randomlinks \
      ~{if defined(karyotype) then ("-karyotype " +  '"' + karyotype + '"') else ""} \
      ~{if defined(ruleset) then ("-ruleset " +  '"' + ruleset + '"') else ""}
  >>>
  parameter_meta {
    karyotype: ""
    ruleset: ""
  }
}