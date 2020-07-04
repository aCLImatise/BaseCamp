version 1.0

task Epic {
  input {
    Array[String] treatment
    Array[String] control
    String? number_cores
    String? genome
    Boolean? keep_duplicates
    String? window_size
    String? gaps_allowed
    String? fragment_size
    String? false_discovery_rate_cut_off
    String? effective_genome_fraction
    String? chrom_sizes
    String? store_matrix
    String? bigwig
    String? individual_log_two_fc_bigwigs
    String? chip_bigwig
    String? input_bigwig
    String? log_two_fc_bigwig
    String? bed
    String? log
    String? outfile
  }
  command <<<
    epic \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--keep-duplicates" false="" keep_duplicates} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(gaps_allowed) then ("--gaps-allowed " +  '"' + gaps_allowed + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(false_discovery_rate_cut_off) then ("--false-discovery-rate-cutoff " +  '"' + false_discovery_rate_cut_off + '"') else ""} \
      ~{if defined(effective_genome_fraction) then ("--effective-genome-fraction " +  '"' + effective_genome_fraction + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chromsizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(store_matrix) then ("--store-matrix " +  '"' + store_matrix + '"') else ""} \
      ~{if defined(bigwig) then ("--bigwig " +  '"' + bigwig + '"') else ""} \
      ~{if defined(individual_log_two_fc_bigwigs) then ("--individual-log2fc-bigwigs " +  '"' + individual_log_two_fc_bigwigs + '"') else ""} \
      ~{if defined(chip_bigwig) then ("--chip-bigwig " +  '"' + chip_bigwig + '"') else ""} \
      ~{if defined(input_bigwig) then ("--input-bigwig " +  '"' + input_bigwig + '"') else ""} \
      ~{if defined(log_two_fc_bigwig) then ("--log2fc-bigwig " +  '"' + log_two_fc_bigwig + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    treatment: "Treatment (pull-down) file(s) in (b/gzipped) bed/bedpe format."
    control: "Control (input) file(s) in (b/gzipped) bed/bedpe format."
    number_cores: "Number of cpus to use. Can use at most one per chromosome. Default: 1."
    genome: "Which genome to analyze. Default: hg19. If --chromsizes flag is given, --genome is not required."
    keep_duplicates: "Keep reads mapping to the same position on the same strand within a library. Default is to remove all but the first duplicate."
    window_size: "Size of the windows to scan the genome. WINDOW_SIZE is the smallest possible island. Default 200."
    gaps_allowed: "This number is multiplied by the window size to determine the gap size. Must be an integer. Default: 3."
    fragment_size: "(Single end reads only) Size of the sequenced fragment. The center of the the fragment will be taken as half the fragment size. Default 150."
    false_discovery_rate_cut_off: "Remove all islands with an FDR below cutoff. Default 0.05."
    effective_genome_fraction: "Use a different effective genome fraction than the one included in epic. The default value depends on the genome and readlength, but is a number between 0 and 1."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two columns: chromosome names and sizes. Useful to analyze custom genomes, assemblies or simulated data. Only chromosomes included in the file will be analyzed."
    store_matrix: "Store the matrix of counts per bin for ChIP and input to gzipped file <STORE_MATRIX>."
    bigwig: "For each file, store a bigwig of both enriched and non-enriched regions to folder <BIGWIG>. Requires different basenames for each file."
    individual_log_two_fc_bigwigs: "For each file, store a bigwig of the log2fc of ChIP/(Sum Input) to folder <INDIVIDUAL-LOG2FC- BIGWIGS>. Requires different basenames for each file."
    chip_bigwig: "Store an RPKM-normalized summed bigwig for all ChIP files in file <CHIP-BIGWIG>."
    input_bigwig: "Store an RPKM-normalized summed bigwig for all Input files in file <INPUT-BIGWIG>."
    log_two_fc_bigwig: "Store an log2(ChIP/Input) bigwig in file <LOG2FC- BIGWIG>. (Both ChIP and Input are RPKM-normalized before dividing.)"
    bed: "A summary bed file of all regions for display in the UCSC genome browser or downstream analyses with e.g. bedtools. The score field is log2(#ChIP/#Input) * 100 capped at a 1000."
    log: "File to write log messages to."
    outfile: "File to write results to. By default sent to stdout."
  }
}