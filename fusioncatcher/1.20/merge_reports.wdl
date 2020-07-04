version 1.0

task MergeReports.py {
  input {
    String? input_bowtie
    String? input_blat
    String? input_star
    String? input_bowtie_two
    String? input_bwa
    String? input_spotlight
    String? input_candidate_fusion_genes
    String? input_ambiguous
    String? supporting_reads_blat
    String? supporting_pairs_blat
    String? supporting_reads_star
    String? supporting_pairs_star
    String? supporting_reads_bowtie_two
    String? supporting_pairs_bowtie_two
    String? supporting_reads_bwa
    String? supporting_pairs_bwa
    String? supporting_reads_spotlight
    String? supporting_pairs_spotlight
    Boolean? squish_report
    String? anchor_two
    String? merged_report_candidate
  }
  command <<<
    merge_reports.py \
      ~{if defined(input_bowtie) then ("--input_bowtie " +  '"' + input_bowtie + '"') else ""} \
      ~{if defined(input_blat) then ("--input_blat " +  '"' + input_blat + '"') else ""} \
      ~{if defined(input_star) then ("--input_star " +  '"' + input_star + '"') else ""} \
      ~{if defined(input_bowtie_two) then ("--input_bowtie2 " +  '"' + input_bowtie_two + '"') else ""} \
      ~{if defined(input_bwa) then ("--input_bwa " +  '"' + input_bwa + '"') else ""} \
      ~{if defined(input_spotlight) then ("--input_spotlight " +  '"' + input_spotlight + '"') else ""} \
      ~{if defined(input_candidate_fusion_genes) then ("--input_candidate_fusion_genes " +  '"' + input_candidate_fusion_genes + '"') else ""} \
      ~{if defined(input_ambiguous) then ("--input_ambiguous " +  '"' + input_ambiguous + '"') else ""} \
      ~{if defined(supporting_reads_blat) then ("--supporting_reads_blat " +  '"' + supporting_reads_blat + '"') else ""} \
      ~{if defined(supporting_pairs_blat) then ("--supporting_pairs_blat " +  '"' + supporting_pairs_blat + '"') else ""} \
      ~{if defined(supporting_reads_star) then ("--supporting_reads_star " +  '"' + supporting_reads_star + '"') else ""} \
      ~{if defined(supporting_pairs_star) then ("--supporting_pairs_star " +  '"' + supporting_pairs_star + '"') else ""} \
      ~{if defined(supporting_reads_bowtie_two) then ("--supporting_reads_bowtie2 " +  '"' + supporting_reads_bowtie_two + '"') else ""} \
      ~{if defined(supporting_pairs_bowtie_two) then ("--supporting_pairs_bowtie2 " +  '"' + supporting_pairs_bowtie_two + '"') else ""} \
      ~{if defined(supporting_reads_bwa) then ("--supporting_reads_bwa " +  '"' + supporting_reads_bwa + '"') else ""} \
      ~{if defined(supporting_pairs_bwa) then ("--supporting_pairs_bwa " +  '"' + supporting_pairs_bwa + '"') else ""} \
      ~{if defined(supporting_reads_spotlight) then ("--supporting_reads_spotlight " +  '"' + supporting_reads_spotlight + '"') else ""} \
      ~{if defined(supporting_pairs_spotlight) then ("--supporting_pairs_spotlight " +  '"' + supporting_pairs_spotlight + '"') else ""} \
      ~{true="--squish-report" false="" squish_report} \
      ~{if defined(anchor_two) then ("--anchor2 " +  '"' + anchor_two + '"') else ""} \
      ~{if defined(merged_report_candidate) then ("--output " +  '"' + merged_report_candidate + '"') else ""}
  >>>
  parameter_meta {
    input_bowtie: "The report with candidate fusion genes found using the Bowtie."
    input_blat: "The report with candidate fusion genes found using the BLAT aligner."
    input_star: "The report with candidate fusion genes found using the STAR aligner."
    input_bowtie_two: "The report with candidate fusion genes found using the BOWTIE2 aligner."
    input_bwa: "The report with candidate fusion genes found using the BWA aligner."
    input_spotlight: "The report with candidate fusion genes found using the SPOTLIGHT method."
    input_candidate_fusion_genes: "The input list of candidate fusion genes, for example 'candidate_fusion-genes_no-offending-reads_label-no- proteins-paralogs-readthrough-similar- pseudogenes_further.txt'."
    input_ambiguous: "File containing the pairs of genes and their corresponding number of reads which map ambiguously on each other."
    supporting_reads_blat: "The minimum number of supporting reads (found using BLAT aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_pairs_blat: "The minimum number of supporting pairs (found using BLAT aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_reads_star: "The minimum number of supporting reads (found using STAR aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_pairs_star: "The minimum number of supporting pairs (found using STAR aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_reads_bowtie_two: "The minimum number of supporting reads (found using BOWTIE2 aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_pairs_bowtie_two: "The minimum number of supporting pairs (found using BOWTIE2 aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_reads_bwa: "The minimum number of supporting reads (found using BOWTIE2 aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_pairs_bwa: "The minimum number of supporting pairs (found using BWA aligner) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_reads_spotlight: "The minimum number of supporting reads (found using SPOTLIGHT method) necessary for considering valid a candidate fusion gene. Default is '2'."
    supporting_pairs_spotlight: "The minimum number of supporting pairs (found using SPOTLIGHT method) necessary for considering valid a candidate fusion gene. Default is '2'."
    squish_report: "If set then the report is squished (i.e. fusion genes with same junction coordinates are listed once even that they are found by severeal methods). Default is 'False'."
    anchor_two: "For anchors longer (or equal) with this value it is enough to have only one supporting read. Default is '40'."
    merged_report_candidate: "Merged report of candidate fusion genes."
  }
}