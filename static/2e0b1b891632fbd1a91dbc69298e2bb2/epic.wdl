version 1.0

task Epic {
  input {
    Array[String] treatment
    Array[String] control
    String? number_cores
    String? genome
    String? keep_duplicates
    String? window_size
    String? gaps_allowed
    String? fragment_size
    String? false_discovery_rate_cut_off
    String? effective_genome_length
    String? store_matrix
    Boolean? paired_end
  }
  command <<<
    epic \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(keep_duplicates) then ("--keep-duplicates " +  '"' + keep_duplicates + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(gaps_allowed) then ("--gaps-allowed " +  '"' + gaps_allowed + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(false_discovery_rate_cut_off) then ("--false-discovery-rate-cutoff " +  '"' + false_discovery_rate_cut_off + '"') else ""} \
      ~{if defined(effective_genome_length) then ("--effective_genome_length " +  '"' + effective_genome_length + '"') else ""} \
      ~{if defined(store_matrix) then ("--store-matrix " +  '"' + store_matrix + '"') else ""} \
      ~{true="--paired-end" false="" paired_end}
  >>>
  parameter_meta {
    treatment: "Treatment (pull-down) file(s) in (b/gzipped) bed/bedpe format."
    control: "Control (input) file(s) in (b/gzipped) bed/bedpe format."
    number_cores: "Number of cpus to use. Can use at most one per chromosome. Default: 1."
    genome: "Which genome to analyze. Default: hg19."
    keep_duplicates: "Keep reads mapping to the same position on the same strand within a library. Default is to remove all but the first duplicate."
    window_size: "Size of the windows to scan the genome. WINDOW_SIZE is the smallest possible island. Default 200."
    gaps_allowed: "Multiple of window size used to determine the gap size. Must be an integer. Default: 3."
    fragment_size: "Size of the sequenced fragment. The center of the the fragment will be taken as half the fragment size. Default 150."
    false_discovery_rate_cut_off: "Remove all islands with an FDR below cutoff. Default 1.0 (i.e. all found islands included no matter how bad the adjusted p-value.)."
    effective_genome_length: "Use a different effective genome size than the one included in epic. The default value depends on the genome and readlength."
    store_matrix: "Store the matrix of counts per bin for ChIP and input to gzipped file <STORE_MATRIX>."
    paired_end: "Use paired end data (bedpe)."
  }
}