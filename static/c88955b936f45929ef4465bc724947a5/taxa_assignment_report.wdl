version 1.0

task TaxaAssignmentReport.py {
  input {
    String? tax_a_mapping_fp
    String? fast_a_fp
  }
  command <<<
    taxa_assignment_report.py \
      ~{if defined(tax_a_mapping_fp) then ("--taxa_mapping_fp " +  '"' + tax_a_mapping_fp + '"') else ""} \
      ~{if defined(fast_a_fp) then ("--fasta_fp " +  '"' + fast_a_fp + '"') else ""}
  >>>
  parameter_meta {
    tax_a_mapping_fp: "Taxonomy mapping filepath [REQUIRED]"
    fast_a_fp: "Fasta sequence file. [REQUIRED]"
  }
}