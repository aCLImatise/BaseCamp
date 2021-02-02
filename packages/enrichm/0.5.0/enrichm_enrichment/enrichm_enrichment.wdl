version 1.0

task EnrichmEnrichment {
  input {
    File? log
    Int? verbosity
    Directory? output_directory
    Boolean? force
    Directory? annotate_output
    File? metadata
    String? annotation_matrix
    String? abundance
    String? abundance_metadata
    String? transcriptome
    String? transcriptome_metadata
    File? batch_file
    Float? pval_cut_off
    String? proportions_cut_off
    String? threshold
    Int? multi_test_correction
    Int? processes
    Boolean? allow_negative_values
    Boolean? ko
    Boolean? ko_hmm
    Boolean? pfam
    Boolean? tigr_fam
    Boolean? cluster
    Boolean? ortholog
    Boolean? ca_zy
    Boolean? ec
  }
  command <<<
    enrichm enrichment \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(annotate_output) then ("--annotate_output " +  '"' + annotate_output + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(annotation_matrix) then ("--annotation_matrix " +  '"' + annotation_matrix + '"') else ""} \
      ~{if defined(abundance) then ("--abundance " +  '"' + abundance + '"') else ""} \
      ~{if defined(abundance_metadata) then ("--abundance_metadata " +  '"' + abundance_metadata + '"') else ""} \
      ~{if defined(transcriptome) then ("--transcriptome " +  '"' + transcriptome + '"') else ""} \
      ~{if defined(transcriptome_metadata) then ("--transcriptome_metadata " +  '"' + transcriptome_metadata + '"') else ""} \
      ~{if defined(batch_file) then ("--batchfile " +  '"' + batch_file + '"') else ""} \
      ~{if defined(pval_cut_off) then ("--pval_cutoff " +  '"' + pval_cut_off + '"') else ""} \
      ~{if defined(proportions_cut_off) then ("--proportions_cutoff " +  '"' + proportions_cut_off + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(multi_test_correction) then ("--multi_test_correction " +  '"' + multi_test_correction + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (allow_negative_values) then "--allow_negative_values" else ""} \
      ~{if (ko) then "--ko" else ""} \
      ~{if (ko_hmm) then "--ko_hmm" else ""} \
      ~{if (pfam) then "--pfam" else ""} \
      ~{if (tigr_fam) then "--tigrfam" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if (ortholog) then "--ortholog" else ""} \
      ~{if (ca_zy) then "--cazy" else ""} \
      ~{if (ec) then "--ec" else ""}
  >>>
  parameter_meta {
    log: "Output logging information to this file."
    verbosity: "Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent"
    output_directory: "Output directory"
    force: "Overwrite previous run"
    annotate_output: "Output directory provided by enrichm annotate"
    metadata: "Metadata file with two columns, the first with the genome name, the second with the groupings to compare."
    annotation_matrix: "Annotation matrix to compare."
    abundance: "Genome abundance matrix."
    abundance_metadata: "Metadata grouping abundance samples."
    transcriptome: "Genome abundance matrix."
    transcriptome_metadata: "Metadata grouping abundance samples."
    batch_file: "metadata file to compare with."
    pval_cut_off: "Only output results with a p-value below a this cutoff (default=0.05)."
    proportions_cut_off: "Proportion enrichment cutoff."
    threshold: "The threshold to control for in false discovery rate of familywise error rate."
    multi_test_correction: "The form of mutiple test correction to use. Uses the statsmodel module and consequently has all of its options.\\nDefault: Benjamini-Hochberg FDR (fdr_bh)\\nOptions: Bonferroni (b)\\nSidak (s)\\nHolm (h)\\nHolm-Sidak (hs)\\nSimes-Hochberg (sh)\\nHommel (ho)\\nFDR Benjamini-Yekutieli (fdr_by)\\nFDR 2-stage Benjamini-Hochberg (fdr_tsbh)\\nFDR 2-stage Benjamini-Krieger-Yekutieli (fdr_tsbky)\\nFDR adaptive Gavrilov-Benjamini-Sarkar (fdr_gbs))"
    processes: "Number of processes to use for enrichment."
    allow_negative_values: "Allow negative values in input matrix."
    ko: "Compare KO ids (annotated with DIAMOND)"
    ko_hmm: "Compare KO ids (annotated with HMMs)"
    pfam: "Compare Pfam ids"
    tigr_fam: "Compare TIGRFAM ids"
    cluster: "Compare cluster ids"
    ortholog: "Compare ortholog ids"
    ca_zy: "Compare dbCAN ids"
    ec: "Compare EC ids"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
    Directory out_output_directory = "${in_output_directory}"
    Directory out_annotate_output = "${in_annotate_output}"
  }
}