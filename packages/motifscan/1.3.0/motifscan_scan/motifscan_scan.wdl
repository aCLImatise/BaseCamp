version 1.0

task MotifscanScan {
  input {
    Boolean? verbose
    File? input_genomic_regions
    String? format_default_bed
    String? motif
    String? genome
    String? p_value_cutoff
    String? loc
    Int? upstream
    Int? downstream
    Int? window_size
    Boolean? strand
    Boolean? no_enrich
    Int? n_random
    String? seed
    File? use_control_regions
    Int? threads
    Directory? output_dir
    Boolean? site
    String strands_dot
    String analysis_dot
    String bed
    String site_dot
    String sites_dot
  }
  command <<<
    motifscan scan \
      ~{strands_dot} \
      ~{analysis_dot} \
      ~{bed} \
      ~{site_dot} \
      ~{sites_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_genomic_regions) then ("-i " +  '"' + input_genomic_regions + '"') else ""} \
      ~{if defined(format_default_bed) then ("-f " +  '"' + format_default_bed + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(p_value_cutoff) then ("-p " +  '"' + p_value_cutoff + '"') else ""} \
      ~{if defined(loc) then ("--loc " +  '"' + loc + '"') else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (no_enrich) then "--no-enrich" else ""} \
      ~{if defined(n_random) then ("--n-random " +  '"' + n_random + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(use_control_regions) then ("-c " +  '"' + use_control_regions + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (site) then "--site" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/motifscan:1.3.0--py36h4c5857e_0"
  }
  parameter_meta {
    verbose: "Enable verbose log messages."
    input_genomic_regions: "Input genomic regions (peaks) to be scanned."
    format_default_bed: "Format of the input file. Default: bed"
    motif: "Motif set name to scan for."
    genome: "Genome assembly name."
    p_value_cutoff: "P value cutoff for motif scores. Default: 1e-4"
    loc: "If specified, only scan promoter or distal regions."
    upstream: "TSS upstream distance for promoters. Default: 4000"
    downstream: "TSS downstream distance for promoters. Default: 2000"
    window_size: "Window size for scanning. In most cases, motifs occur\\nclosely around the centers or summits of genomic\\npeaks. Scanning a fixed-size window is often\\nsufficient to detect motif sites and unbiased for the\\nenrichment analysis. If set to 0, the whole input\\nregions are included for scanning. Default: 1000"
    strand: "{both,+,-}   Enable strand-specific scanning, defaults to scan both"
    no_enrich: "Disable the enrichment analysis."
    n_random: "Generate N random control regions for each input\\nregion. Default: 5"
    seed: "Random seed used to generate control regions."
    use_control_regions: "Use custom control regions for the enrichment"
    threads: "Number of processes used to run in parallel."
    output_dir: "Directory to write output files."
    site: "If set, report the position for each detected motif"
    strands_dot: "Enrichment Analysis Options:"
    analysis_dot: "--cf {bed,bed3-summit,macs,macs2,narrowpeak,broadpeak,manorm}"
    bed: "Threads Options:"
    site_dot: "--plot                If set, plot the distributions of detected motif"
    sites_dot: "Examples:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}