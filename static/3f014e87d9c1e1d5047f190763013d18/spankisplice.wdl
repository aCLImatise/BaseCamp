version 1.0

task Spankisplice {
  input {
    String? reference_gtf
    String? astalavista_definitions_generated
    String? j_tab
    String? fasta_file_must
    String? cufflinks_output_file
    String? output_directory_default
    String? vebosely_report_defaultf
  }
  command <<<
    spankisplice \
      ~{if defined(reference_gtf) then ("-g " +  '"' + reference_gtf + '"') else ""} \
      ~{if defined(astalavista_definitions_generated) then ("-a " +  '"' + astalavista_definitions_generated + '"') else ""} \
      ~{if defined(j_tab) then ("-jtab " +  '"' + j_tab + '"') else ""} \
      ~{if defined(fasta_file_must) then ("-f " +  '"' + fasta_file_must + '"') else ""} \
      ~{if defined(cufflinks_output_file) then ("-c " +  '"' + cufflinks_output_file + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(vebosely_report_defaultf) then ("-v " +  '"' + vebosely_report_defaultf + '"') else ""}
  >>>
  parameter_meta {
    reference_gtf: "Reference GTF"
    astalavista_definitions_generated: "AStalavista definitions Generated from the reference GTF you are using"
    j_tab: "junctiontab (jtab) From spankijunc or merge_jtabs"
    fasta_file_must: "Fasta file Must have same chromosomes as GTF"
    cufflinks_output_file: "Cufflinks output The isoforms.fpkm_tracking file, to extract FPKMs (optional)"
    output_directory_default: "Output directory, default='spankisplice_out'"
    vebosely_report_defaultf: "Vebosely report event tables, default=F"
  }
}