version 1.0

task RibotricerDetectOrfs {
  input {
    String? bam
    String? ribot_ricer_index
    String? prefix
    Boolean? stranded
    String? read_lengths
    String? p_site_offsets
    Float? phase_score_cut_off
    Int? min_valid_codons
    Int? min_reads_per_codon
    Float? min_valid_codons_ratio
    Float? min_read_density
    Boolean? report_all
  }
  command <<<
    ribotricer detect-orfs \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--stranded" false="" stranded} \
      ~{if defined(read_lengths) then ("--read_lengths " +  '"' + read_lengths + '"') else ""} \
      ~{if defined(p_site_offsets) then ("--psite_offsets " +  '"' + p_site_offsets + '"') else ""} \
      ~{if defined(phase_score_cut_off) then ("--phase_score_cutoff " +  '"' + phase_score_cut_off + '"') else ""} \
      ~{if defined(min_valid_codons) then ("--min_valid_codons " +  '"' + min_valid_codons + '"') else ""} \
      ~{if defined(min_reads_per_codon) then ("--min_reads_per_codon " +  '"' + min_reads_per_codon + '"') else ""} \
      ~{if defined(min_valid_codons_ratio) then ("--min_valid_codons_ratio " +  '"' + min_valid_codons_ratio + '"') else ""} \
      ~{if defined(min_read_density) then ("--min_read_density " +  '"' + min_read_density + '"') else ""} \
      ~{true="--report_all" false="" report_all}
  >>>
  parameter_meta {
    bam: "Path to BAM file  [required]"
    ribot_ricer_index: "Path to the index file of ribotricer This file should be generated using ribotricer prepare-orfs  [required]"
    prefix: "Prefix to output file  [required]"
    stranded: "[yes|no|reverse]     whether the data is from a strand-specific assay If not provided, the experimental protocol will be automatically inferred"
    read_lengths: "Comma separated read lengths to be used, such as 28,29,30 If not provided, it will be automatically determined by assessing the metagene periodicity"
    p_site_offsets: "Comma separated P-site offsets for each read length matching the read lengths provided. If not provided, reads from different read lengths will be automatically aligned using cross-correlation"
    phase_score_cut_off: "Phase score cutoff for determining active translation  [default: 0.428571428571]"
    min_valid_codons: "Minimum number of codons with non-zero reads for determining active translation [default: 5]"
    min_reads_per_codon: "Minimum number of reads per codon for determining active translation  [default: 0]"
    min_valid_codons_ratio: "Minimum ratio of codons with non-zero reads to total codons for determining active translation  [default: 0]"
    min_read_density: "Minimum read density (total_reads/length) over an ORF total codons for determining active translation  [default: 0.0]"
    report_all: "Whether output all ORFs including those non- translating ones"
  }
}