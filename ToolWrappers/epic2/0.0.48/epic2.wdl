version 1.0

task Epic2 {
  input {
    Array[String] treatment
    Array[String] control
    Int? genome
    Boolean? keep_duplicates
    Boolean? original_algorithm
    Int? bin_size
    Int? gaps_allowed
    Int? fragment_size
    Float? false_discovery_rate_cut_off
    Int? effective_genome_fraction
    File? chrom_sizes
    Int? e_value
    Int? required_flag
    Int? filter_flag
    Int? mapq
    Boolean? autodetect_chrom_s
    String? discard_chromosomes_pattern
    File? file_write_results
    Boolean? original_statistics
    Boolean? guess_bam_pe
    Boolean? quiet
    Boolean? example
    String command_dot
  }
  command <<<
    epic2 \
      ~{command_dot} \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if (original_algorithm) then "--original-algorithm" else ""} \
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
      ~{if (autodetect_chrom_s) then "--autodetect-chroms" else ""} \
      ~{if defined(discard_chromosomes_pattern) then ("--discard-chromosomes-pattern " +  '"' + discard_chromosomes_pattern + '"') else ""} \
      ~{if defined(file_write_results) then ("--output " +  '"' + file_write_results + '"') else ""} \
      ~{if (original_statistics) then "--original-statistics" else ""} \
      ~{if (guess_bam_pe) then "--guess-bampe" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (example) then "--example" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/epic2:0.0.48--py37hd0e48df_0"
  }
  parameter_meta {
    treatment: "Treatment (pull-down) file(s) in one of these formats:\\nbed, bedpe, bed.gz, bedpe.gz or (single-end) bam, sam.\\nThe --guess-bampe flag enables optional support for\\n(paired-end) bampe and sampe formats. Mixing file\\nformats is allowed."
    control: "Control (input) file(s) in one of these formats: bed,\\nbedpe, bed.gz, bedpe.gz or (single-end) bam, sam. The\\n--guess-bampe flag enables optional support for\\n(paired-end) bampe and sampe formats. Mixing file\\nformats is allowed."
    genome: "Which genome to analyze. Default: hg19. If\\n--chromsizes and --egf flag is given, --genome is not\\nrequired."
    keep_duplicates: "Keep reads mapping to the same position on the same\\nstrand within a library. Default: False."
    original_algorithm: "Use the original SICER algorithm, without the epic2\\nfix. This will use all reads in your files to compute\\nthe p-values, including those falling outside the\\ngenome boundaries."
    bin_size: "Size of the windows to scan the genome. BIN-SIZE is\\nthe smallest possible island. Default 200."
    gaps_allowed: "This number is multiplied by the window size to\\ndetermine the number of gaps (ineligible windows)\\nallowed between two eligible windows. Must be an\\ninteger. Default: 3."
    fragment_size: "(Single end reads only) Size of the sequenced\\nfragment. Each read is extended half the fragment size\\nfrom the 5' end. Default 150 (i.e. extend by 75)."
    false_discovery_rate_cut_off: "Remove all islands with an FDR above cutoff. Default\\n0.05."
    effective_genome_fraction: "Use a different effective genome fraction than the one\\nincluded in epic2. The default value depends on the\\ngenome and readlength, but is a number between 0 and\\n1."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two\\ncolumns: chromosome names and sizes. Useful to analyze\\ncustom genomes, assemblies or simulated data. Only\\nchromosomes included in the file will be analyzed."
    e_value: "The E-value controls the genome-wide error rate of\\nidentified islands under the random background\\nassumption. Should be used when not using a control\\nlibrary. Default: 1000."
    required_flag: "(bampe/bam only.) Keep reads with these bits set in\\nflag. Same as `samtools view -f`. Default 0"
    filter_flag: "(bampe/bam only.) Discard reads with these bits set in\\nflag. Same as `samtools view -F`. Default 1540 (hex:\\n0x604). See\\nhttps://broadinstitute.github.io/picard/explain-\\nflags.html for more info."
    mapq: "(bampe/bam only.) Discard reads with mapping quality\\nlower than this. Default 5."
    autodetect_chrom_s: "(bampe/bam only.) Autodetect chromosomes from bam\\nfile. Use with --discard-chromosomes flag to avoid\\nnon-canonical chromosomes."
    discard_chromosomes_pattern: "(bampe/bam only.) Discard reads from chromosomes\\nmatching this pattern. Default '_'. Note that if you\\nare not interested in the results from non-canonical\\nchromosomes, you should ensure they are removed with\\nthis flag, otherwise they will make the statistical\\nanalysis too stringent."
    file_write_results: "File to write results to. Default: stdout."
    original_statistics: "Use the original SICER way of computing the\\nstatistics. Like SICER itself, this method raises an\\nerror on large datasets. Only included for debugging-\\npurposes."
    guess_bam_pe: "Autodetect bampe file format based on flags from the\\nfirst 100 reads. If all of them are paired, then the\\nformat is bampe. Only properly paired reads are\\nprocessed by default (0x1 and 0x2 samtools flags)."
    quiet: "Do not write output messages to stderr."
    example: "Show the paths of the example data and an example"
    command_dot: "--version, -v         show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}