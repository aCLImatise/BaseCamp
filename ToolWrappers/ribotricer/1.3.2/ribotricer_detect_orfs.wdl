version 1.0

task RibotricerDetectorfs {
  input {
    File? bam
    File? ribot_ricer_index
    File? prefix
    Boolean? stranded
    Int? read_lengths
    Int? p_site_offsets
    Float? phase_score_cut_off
    Int? min_valid_codons
    Int? min_reads_per_codon
    Float? min_valid_codons_ratio
    Float? min_read_density
    Boolean? report_all
  }
  command <<<
    ribotricer detect_orfs \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if defined(read_lengths) then ("--read_lengths " +  '"' + read_lengths + '"') else ""} \
      ~{if defined(p_site_offsets) then ("--psite_offsets " +  '"' + p_site_offsets + '"') else ""} \
      ~{if defined(phase_score_cut_off) then ("--phase_score_cutoff " +  '"' + phase_score_cut_off + '"') else ""} \
      ~{if defined(min_valid_codons) then ("--min_valid_codons " +  '"' + min_valid_codons + '"') else ""} \
      ~{if defined(min_reads_per_codon) then ("--min_reads_per_codon " +  '"' + min_reads_per_codon + '"') else ""} \
      ~{if defined(min_valid_codons_ratio) then ("--min_valid_codons_ratio " +  '"' + min_valid_codons_ratio + '"') else ""} \
      ~{if defined(min_read_density) then ("--min_read_density " +  '"' + min_read_density + '"') else ""} \
      ~{if (report_all) then "--report_all" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Path to BAM file  [required]"
    ribot_ricer_index: "Path to the index file of ribotricer This\\nfile should be generated using ribotricer\\nprepare-orfs  [required]"
    prefix: "Prefix to output file  [required]"
    stranded: "[yes|no|reverse]     whether the data is from a strand-specific\\nassay If not provided, the experimental\\nprotocol will be automatically inferred"
    read_lengths: "Comma separated read lengths to be used,\\nsuch as 28,29,30 If not provided, it will be\\nautomatically determined by assessing the\\nmetagene periodicity"
    p_site_offsets: "Comma separated P-site offsets for each read\\nlength matching the read lengths provided.\\nIf not provided, reads from different read\\nlengths will be automatically aligned using\\ncross-correlation"
    phase_score_cut_off: "Phase score cutoff for determining active"
    min_valid_codons: "Minimum number of codons with non-zero reads\\nfor determining active translation\\n[default: 5]"
    min_reads_per_codon: "Minimum number of reads per codon for\\ndetermining active translation  [default: 0]"
    min_valid_codons_ratio: "Minimum ratio of codons with non-zero reads\\nto total codons for determining active\\ntranslation  [default: 0]"
    min_read_density: "Minimum read density (total_reads/length)\\nover an ORF total codons for determining\\nactive translation  [default: 0.0]"
    report_all: "Whether output all ORFs including those non-\\ntranslating ones"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}