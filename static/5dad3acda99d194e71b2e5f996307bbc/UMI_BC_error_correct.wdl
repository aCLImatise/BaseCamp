version 1.0

task UMIBCErrorCorrect.py {
  input {
    String? bc_rank_file
    Boolean? only_top_ranked
    String? drop_seq_clean_report
    String? drop_seq_synthesis_report
    String input_csv
    String output_csv
  }
  command <<<
    UMI_BC_error_correct.py \
      ~{input_csv} \
      ~{output_csv} \
      ~{if defined(bc_rank_file) then ("--bc_rank_file " +  '"' + bc_rank_file + '"') else ""} \
      ~{true="--only_top_ranked" false="" only_top_ranked} \
      ~{if defined(drop_seq_clean_report) then ("--dropseq_clean_report " +  '"' + drop_seq_clean_report + '"') else ""} \
      ~{if defined(drop_seq_synthesis_report) then ("--dropseq_synthesis_report " +  '"' + drop_seq_synthesis_report + '"') else ""}
  >>>
  parameter_meta {
    bc_rank_file: "(Optional) cell barcode rank file from short read data"
    only_top_ranked: "(Optional) only output those that are top-ranked. Must have --bc_rank_file."
    drop_seq_clean_report: "Output from running DetectBeadSubstitutionErrors in DropSeq cookbook (ex: star_gene_exon_tagged_clean_subs titution.bam_report.txt)"
    drop_seq_synthesis_report: "Output from running DetectBeadSynthesisErrors in DropSeq cookbook (ex: star_gene_exon_tagged_clean_subs titution_clean2.bam_report.txt)"
    input_csv: "Input CSV"
    output_csv: "Output CSV"
  }
}