version 1.0

task CRISPRessoCount {
  input {
    String? utility
    Int? q
    String? r
  }
  command <<<
    CRISPRessoCount \
      ~{if defined(utility) then ("-Utility " +  '"' + utility + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    utility: "perform sgRNA enumeration from deep sequencing data-\\n)                                             )"
    q: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}