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
      ~{true="--uncorrected" false="" uncorrected} \
      ~{if defined(dna) then ("--dna " +  '"' + dna + '"') else ""} \
      ~{if defined(na) then ("--na " +  '"' + na + '"') else ""} \
      ~{if defined(mg) then ("--mg " +  '"' + mg + '"') else ""} \
      ~{if defined(dntp) then ("--dntp " +  '"' + dntp + '"') else ""}
  >>>
  parameter_meta {
    uncorrected: "Do not use monovalent/divalent cation corrections"
    dna: "DNA concentration (nM)"
    na: "Na+ concentration (mM)"
    mg: "Mg++ concentration (mM)"
    dntp: "Nucleotide triphosphate concentration (mM)"
  }
}