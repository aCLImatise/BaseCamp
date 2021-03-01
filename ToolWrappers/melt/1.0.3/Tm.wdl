version 1.0

task Tm {
  input {
    Boolean? uncorrected
    String? dna
    String? na
    String? mg
    String? dntp
  }
  command <<<
    Tm \
      ~{if (uncorrected) then "--uncorrected" else ""} \
      ~{if defined(dna) then ("--dna " +  '"' + dna + '"') else ""} \
      ~{if defined(na) then ("--na " +  '"' + na + '"') else ""} \
      ~{if defined(mg) then ("--mg " +  '"' + mg + '"') else ""} \
      ~{if defined(dntp) then ("--dntp " +  '"' + dntp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uncorrected: "Do not use monovalent/divalent cation corrections"
    dna: "DNA concentration (nM)"
    na: "Na+ concentration (mM)"
    mg: "Mg++ concentration (mM)"
    dntp: "Nucleotide triphosphate concentration (mM)"
  }
  output {
    File out_stdout = stdout()
  }
}