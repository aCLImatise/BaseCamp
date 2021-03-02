version 1.0

task Snppileup {
  input {
    Boolean? count_orphans
    Int? max_depth
    File? gzip
    Boolean? progress
    String? pseudo_snps
    Int? min_map_quality
    Int? min_base_quality
    Int? min_read_counts
    Boolean? verbose
    Boolean? ignore_overlaps
    String? option_dot_dot_dot
    File vcf_file
    File output_file
    String sequence_files_dot_dot_dot
  }
  command <<<
    snp_pileup \
      ~{option_dot_dot_dot} \
      ~{vcf_file} \
      ~{output_file} \
      ~{sequence_files_dot_dot_dot} \
      ~{if (count_orphans) then "--count-orphans" else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(pseudo_snps) then ("--pseudo-snps " +  '"' + pseudo_snps + '"') else ""} \
      ~{if defined(min_map_quality) then ("--min-map-quality " +  '"' + min_map_quality + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(min_read_counts) then ("--min-read-counts " +  '"' + min_read_counts + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (ignore_overlaps) then "--ignore-overlaps" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snp-pileup:0.6.1--hfbaaabd_0"
  }
  parameter_meta {
    count_orphans: "Do not discard anomalous read pairs."
    max_depth: "Sets the maximum depth. Default is 4000."
    gzip: "Compresses the output file with BGZF."
    progress: "Show a progress bar. WARNING: requires additional\\ntime to calculate number of SNPs, and will take\\nlonger than normal."
    pseudo_snps: "Every MULTIPLE positions, if there is no SNP,\\ninsert a blank record with the total count at the\\nposition."
    min_map_quality: "Sets the minimum threshold for mapping\\nquality. Default is 0."
    min_base_quality: "Sets the minimum threshold for base quality.\\nDefault is 0."
    min_read_counts: "Comma separated list of minimum read counts for\\na position to be output. Default is 0."
    verbose: "Show detailed messages."
    ignore_overlaps: "Disable read-pair overlap detection."
    option_dot_dot_dot: ""
    vcf_file: ""
    output_file: ""
    sequence_files_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_gzip = "${in_gzip}"
    File out_output_file = "${in_output_file}"
  }
}