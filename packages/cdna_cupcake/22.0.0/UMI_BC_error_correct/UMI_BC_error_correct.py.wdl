version 1.0

task UMIBCErrorCorrectpy {
  input {
    File? bc_rank_file
    Boolean? only_top_ranked
    String? drop_seq_clean_report
    Int? drop_seq_synthesis_report
    String input_csv
    String output_csv
  }
  command <<<
    UMI_BC_error_correct_py \
      ~{input_csv} \
      ~{output_csv} \
      ~{if defined(bc_rank_file) then ("--bc_rank_file " +  '"' + bc_rank_file + '"') else ""} \
      ~{if (only_top_ranked) then "--only_top_ranked" else ""} \
      ~{if defined(drop_seq_clean_report) then ("--dropseq_clean_report " +  '"' + drop_seq_clean_report + '"') else ""} \
      ~{if defined(drop_seq_synthesis_report) then ("--dropseq_synthesis_report " +  '"' + drop_seq_synthesis_report + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    bc_rank_file: "(Optional) cell barcode rank file from short read data"
    only_top_ranked: "(Optional) only output those that are top-ranked. Must\\nhave --bc_rank_file."
    drop_seq_clean_report: "Output from running DetectBeadSubstitutionErrors in\\nDropSeq cookbook (ex: star_gene_exon_tagged_clean_subs\\ntitution.bam_report.txt)"
    drop_seq_synthesis_report: "Output from running DetectBeadSynthesisErrors in\\nDropSeq cookbook (ex: star_gene_exon_tagged_clean_subs\\ntitution_clean2.bam_report.txt)\\n"
    input_csv: "Input CSV"
    output_csv: "Output CSV"
  }
  output {
    File out_stdout = stdout()
  }
}