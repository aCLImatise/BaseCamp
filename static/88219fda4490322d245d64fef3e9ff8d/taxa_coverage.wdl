version 1.0

task TaxaCoverage.py {
  input {
    String hitsHitsFps
    String taxTaxAFp
  }
  command <<<
    taxa_coverage.py \
      ~{if defined(hitsHitsFps) then ("--hits_fps " +  '"' + hitsHitsFps + '"') else ""} \
      ~{if defined(taxTaxAFp) then ("--taxa_fp " +  '"' + taxTaxAFp + '"') else ""}
  >>>
}