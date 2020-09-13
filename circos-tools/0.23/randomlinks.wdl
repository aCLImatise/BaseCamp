version 1.0

task Randomlinks {
  input {
    String? ruleset
    File? karyotype
  }
  command <<<
    randomlinks \
      ~{if defined(ruleset) then ("-ruleset " +  '"' + ruleset + '"') else ""} \
      ~{if defined(karyotype) then ("-karyotype " +  '"' + karyotype + '"') else ""}
  >>>
  parameter_meta {
    ruleset: ""
    karyotype: ""
  }
  output {
    File out_stdout = stdout()
  }
}