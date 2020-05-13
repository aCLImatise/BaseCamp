version 1.0

task TaxaAssignmentReport.py {
  input {
    String taxTaxAMappingFp
    String fastFastAFp
  }
  command <<<
    taxa_assignment_report.py \
      ~{if defined(taxTaxAMappingFp) then ("--taxa_mapping_fp " +  '"' + taxTaxAMappingFp + '"') else ""} \
      ~{if defined(fastFastAFp) then ("--fasta_fp " +  '"' + fastFastAFp + '"') else ""}
  >>>
}