version 1.0

task Metaphlan2krona.py {
  input {
    String? profile
    String? krona
  }
  command <<<
    metaphlan2krona.py \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(krona) then ("--krona " +  '"' + krona + '"') else ""}
  >>>
  parameter_meta {
    profile: "The input file is the MetaPhlAn standard result file"
    krona: "the Krons output file name"
  }
}