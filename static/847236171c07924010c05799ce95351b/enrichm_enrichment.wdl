version 1.0

task EnrichmEnrichment {
  input {
    String? log
    String? verbosity
    String? output_directory
    Boolean? force
    String? annotate_output
    String? metadata
    String? annotation_matrix
    String? abundance
    String? abundance_metadata
    String? transcriptome
    String? transcriptome_metadata
    String? batch_file
    String? pval_cut_off
    String? proportions_cut_off
    String? threshold
    String? multi_test_correction
    String? processes
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
      ~{true="--force" false="" force} \
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
      ~{true="--allow_negative_values" false="" allow_negative_values} \
      ~{true="--ko" false="" ko} \
      ~{true="--ko_hmm" false="" ko_hmm} \
      ~{true="--pfam" false="" pfam} \
      ~{true="--tigrfam" false="" tigr_fam} \
      ~{true="--cluster" false="" cluster} \
      ~{true="--ortholog" false="" ortholog} \
      ~{true="--cazy" false="" ca_zy} \
      ~{true="--ec" false="" ec}
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
    multi_test_correction: "The form of mutiple test correction to use. Uses the statsmodel module and consequently has all of its options. Default: Benjamini-Hochberg FDR (fdr_bh)  Options: Bonferroni (b)  Sidak (s)  Holm (h)  Holm-Sidak (hs)  Simes-Hochberg (sh)  Hommel (ho)  FDR Benjamini-Yekutieli (fdr_by)  FDR 2-stage Benjamini-Hochberg (fdr_tsbh)  FDR 2-stage Benjamini-Krieger-Yekutieli (fdr_tsbky)  FDR adaptive Gavrilov-Benjamini-Sarkar (fdr_gbs))"
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
}