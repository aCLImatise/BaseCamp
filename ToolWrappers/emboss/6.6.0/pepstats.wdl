version 1.0

task Pepstats {
  input {
    Boolean? aa_data
    Boolean? mw_data
    Boolean? mono
    String acids
  }
  command <<<
    pepstats \
      ~{acids} \
      ~{if (aa_data) then "-aadata" else ""} \
      ~{if (mw_data) then "-mwdata" else ""} \
      ~{if (mono) then "-mono" else ""}
  >>>
  parameter_meta {
    aa_data: "datafile   [Eamino.dat] Amino acid properties"
    mw_data: "datafile   [Emolwt.dat] Molecular weight data for amino"
    mono: "boolean    [N] Use monoisotopic weights"
    acids: "-pkdata             datafile   [Epk.dat] Values of pKa for amino acids"
  }
  output {
    File out_stdout = stdout()
  }
}