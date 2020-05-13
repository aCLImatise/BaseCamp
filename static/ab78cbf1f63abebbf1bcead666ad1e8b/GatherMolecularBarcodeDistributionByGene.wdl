version 1.0

task GatherMolecularBarcodeDistributionByGene {
  input {
    String mM
    String vV
  }
  command <<<
    GatherMolecularBarcodeDistributionByGene \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}