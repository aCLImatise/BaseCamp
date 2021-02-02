version 1.0

task Inforesidue {
  input {
    Boolean? aa_data
    Boolean? mw_data
    String acids
  }
  command <<<
    inforesidue \
      ~{acids} \
      ~{if (aa_data) then "-aadata" else ""} \
      ~{if (mw_data) then "-mwdata" else ""}
  >>>
  parameter_meta {
    aa_data: "datafile   [Eamino.dat] Amino acid properties"
    mw_data: "datafile   [Emolwt.dat] Molecular weight data for amino"
    acids: "General qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}