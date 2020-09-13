version 1.0

task Metaphlan2kronapy {
  input {
    File? profile
    File? krona
  }
  command <<<
    metaphlan2krona_py \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(krona) then ("--krona " +  '"' + krona + '"') else ""}
  >>>
  parameter_meta {
    profile: "The input file is the MetaPhlAn standard result file"
    krona: "the Krons output file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_krona = "${in_krona}"
  }
}