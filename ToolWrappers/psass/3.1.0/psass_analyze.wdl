version 1.0

task PsassAnalyze {
  input {
    Boolean? pool_one
    Boolean? pool_two
    Boolean? po_pool_ation
    File? snp_file
    File? fst_file
    File? genes_file
    File? gff_file
    Boolean? min_depth
    Boolean? window_size
    Boolean? output_resolution
    Boolean? freq_het
    Boolean? range_het
    Boolean? freq_hom
    Boolean? range_hom
    Boolean? min_fst
    Boolean? group_snps
    String input_file
    String output_file
  }
  command <<<
    psass analyze \
      ~{input_file} \
      ~{output_file} \
      ~{if (pool_one) then "--pool1" else ""} \
      ~{if (pool_two) then "--pool2" else ""} \
      ~{if (po_pool_ation) then "--popoolation" else ""} \
      ~{if (snp_file) then "--snp-file" else ""} \
      ~{if (fst_file) then "--fst-file" else ""} \
      ~{if (genes_file) then "--genes-file" else ""} \
      ~{if (gff_file) then "--gff-file" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (window_size) then "--window-size" else ""} \
      ~{if (output_resolution) then "--output-resolution" else ""} \
      ~{if (freq_het) then "--freq-het" else ""} \
      ~{if (range_het) then "--range-het" else ""} \
      ~{if (freq_hom) then "--freq-hom" else ""} \
      ~{if (range_hom) then "--range-hom" else ""} \
      ~{if (min_fst) then "--min-fst" else ""} \
      ~{if (group_snps) then "--group-snps" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/psass:3.1.0--hc088bd4_0"
  }
  parameter_meta {
    pool_one: "TEXT         Name of the first pool (order in the pileup file)                        [females]"
    pool_two: "TEXT         Name of the second pool (order in the pileup file)                       [males]"
    po_pool_ation: "If set, assumes the input file was generated with popoolation2"
    snp_file: "TEXT         Output sex-biased SNPs to this file"
    fst_file: "TEXT         Output high FST positions to this file"
    genes_file: "TEXT         Output gene metrics to this file (requires a GFF file)"
    gff_file: "TEXT         Path to a GFF file for gene-specific output"
    min_depth: "UINT         Minimum depth to include a site in the analyses                          [10]"
    window_size: "UINT         Size of the sliding window (in bp)                                       [100000]"
    output_resolution: "UINT         Output resolution for sliding window metrics (in bp)                     [10000]"
    freq_het: "FLOAT        Frequency of a sex-linked SNP in the heterogametic sex                   [0.5]"
    range_het: "FLOAT        Range of frequency for a sex-linked SNP in the heterogametic sex         [0.15]"
    freq_hom: "FLOAT        Frequency of a sex-linked SNP in the homogametic sex                     [1]"
    range_hom: "FLOAT        Range of frequency for a sex-linked SNP in the homogametic sex           [0.05]"
    min_fst: "FLOAT        Minimum FST to output a site in the FST positions file                   [0.1]"
    group_snps: "If set, group consecutive snps to count them as a single polymorphism"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_snp_file = "${in_snp_file}"
    File out_fst_file = "${in_fst_file}"
    File out_genes_file = "${in_genes_file}"
    File out_gff_file = "${in_gff_file}"
  }
}