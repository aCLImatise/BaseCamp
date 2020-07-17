version 1.0

task Epic2 {
  input {
    Array[String] treatment
    Array[String] control
    String? genome
    Boolean? keep_duplicates
    Boolean? original_algorithm
    String? bin_size
    String? gaps_allowed
    String? fragment_size
    String? false_discovery_rate_cut_off
    String? effective_genome_fraction
    String? chrom_sizes
    String? e_value
    String? required_flag
    String? filter_flag
    String? mapq
    Boolean? autodetect_chrom_s
    String? discard_chromosomes_pattern
    String? file_write_results
    Boolean? original_statistics
    Boolean? quiet
    Boolean? example
  }
  command <<<
    epic2 \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--keep-duplicates" false="" keep_duplicates} \
      ~{true="--original-algorithm" false="" original_algorithm} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(gaps_allowed) then ("--gaps-allowed " +  '"' + gaps_allowed + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(false_discovery_rate_cut_off) then ("--false-discovery-rate-cutoff " +  '"' + false_discovery_rate_cut_off + '"') else ""} \
      ~{if defined(effective_genome_fraction) then ("--effective-genome-fraction " +  '"' + effective_genome_fraction + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chromsizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(e_value) then ("--e-value " +  '"' + e_value + '"') else ""} \
      ~{if defined(required_flag) then ("--required-flag " +  '"' + required_flag + '"') else ""} \
      ~{if defined(filter_flag) then ("--filter-flag " +  '"' + filter_flag + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{true="--autodetect-chroms" false="" autodetect_chrom_s} \
      ~{if defined(discard_chromosomes_pattern) then ("--discard-chromosomes-pattern " +  '"' + discard_chromosomes_pattern + '"') else ""} \
      ~{if defined(file_write_results) then ("--output " +  '"' + file_write_results + '"') else ""} \
      ~{true="--original-statistics" false="" original_statistics} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--example" false="" example}
  >>>
  parameter_meta {
    treatment: "Treatment (pull-down) file(s) in one of these formats: bed, bedpe, bed.gz, bedpe.gz or (single-end) bam, sam. Mixing file formats is allowed."
    control: "Control (input) file(s) in one of these formats: bed, bedpe, bed.gz, bedpe.gz or (single-end) bam, sam. Mixing file formats is allowed."
    genome: "Which genome to analyze. Default: hg19. If --chromsizes and --egf flag is given, --genome is not required."
    keep_duplicates: "Keep reads mapping to the same position on the same strand within a library. Default: False."
    original_algorithm: "Use the original SICER algorithm, without the epic2 fix. This will use all reads in your files to compute the p-values, including those falling outside the genome boundaries."
    bin_size: "Size of the windows to scan the genome. BIN-SIZE is the smallest possible island. Default 200."
    gaps_allowed: "This number is multiplied by the window size to determine the number of gaps (ineligible windows) allowed between two eligible windows. Must be an integer. Default: 3."
    fragment_size: "(Single end reads only) Size of the sequenced fragment. Each read is extended half the fragment size from the 5' end. Default 150 (i.e. extend by 75)."
    false_discovery_rate_cut_off: "Remove all islands with an FDR above cutoff. Default 0.05."
    effective_genome_fraction: "Use a different effective genome fraction than the one included in epic2. The default value depends on the genome and readlength, but is a number between 0 and 1."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two columns: chromosome names and sizes. Useful to analyze custom genomes, assemblies or simulated data. Only chromosomes included in the file will be analyzed."
    e_value: "The E-value controls the genome-wide error rate of identified islands under the random background assumption. Should be used when not using a control library. Default: 1000."
    required_flag: "(bam only.) Keep reads with these bits set in flag. Same as `samtools view -f`. Default 0"
    filter_flag: "(bam only.) Discard reads with these bits set in flag. Same as `samtools view -F`. Default 1540 (hex: 0x604). See https://broadinstitute.github.io/picard/explain- flags.html for more info."
    mapq: "(bam only.) Discard reads with mapping quality lower than this. Default 5."
    autodetect_chrom_s: "(bam only.) Autodetect chromosomes from bam file. Use with --discard-chromosomes flag to avoid non-canonical chromosomes."
    discard_chromosomes_pattern: "(bam only.) Discard reads from chromosomes matching this pattern. Default '_'. Note that if you are not interested in the results from non-canonical chromosomes, you should ensure they are removed with this flag, otherwise they will make the statistical analysis too stringent."
    file_write_results: "File to write results to. Default: stdout."
    original_statistics: "Use the original SICER way of computing the statistics. Like SICER itself, this method raises an error on large datasets. Only included for debugging- purposes."
    quiet: "Do not write output messages to stderr."
    example: "Show the paths of the example data and an example command."
  }
}