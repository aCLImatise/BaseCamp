version 1.0

task CheckAgpAndFa {
  input {
    String? exclude
    String in_dot_agp
    String in_dot_fa
  }
  command <<<
    checkAgpAndFa \
      ~{in_dot_agp} \
      ~{in_dot_fa} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""}
  >>>
  parameter_meta {
    exclude: "- Ignore seq (e.g. chrM for which we usually get sequence from GenBank but don't have AGP)"
    in_dot_agp: ""
    in_dot_fa: ""
  }
}