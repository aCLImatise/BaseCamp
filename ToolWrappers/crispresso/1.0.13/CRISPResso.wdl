version 1.0

task CRISPResso {
  input {
    Int? analysis
    String? a
    Int? r_two
    Int? r_one
  }
  command <<<
    CRISPResso \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(r_two) then ("-r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(r_one) then ("-r1 " +  '"' + r_one + '"') else ""}
  >>>
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from deep sequencing data-\\n)"
    a: ""
    r_two: ""
    r_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}