version 1.0

task Epic {
  input {
    Array[String] treatment
    Array[String] control
    Int? number_cores
    Int? genome
    Boolean? keep_duplicates
    Int? window_size
    Int? gaps_allowed
    Int? fragment_size
    Float? false_discovery_rate_cut_off
    Int? effective_genome_fraction
    File? chrom_sizes
    File? store_matrix
    File? bigwig
    Int? individual_log_two_fc_bigwigs
    File? chip_bigwig
    File? input_bigwig
    Int? log_two_fc_bigwig
    File? bed
    File? log
    File? outfile
  }
  command <<<
    epic \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
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
    treatment: "Treatment (pull-down) file(s) in (b/gzipped) bed/bedpe\\nformat."
    control: "Control (input) file(s) in (b/gzipped) bed/bedpe\\nformat."
    number_cores: "Number of cpus to use. Can use at most one per\\nchromosome. Default: 1."
    genome: "Which genome to analyze. Default: hg19. If\\n--chromsizes flag is given, --genome is not required."
    keep_duplicates: "Keep reads mapping to the same position on the same\\nstrand within a library. Default is to remove all but\\nthe first duplicate."
    window_size: "Size of the windows to scan the genome. WINDOW_SIZE is\\nthe smallest possible island. Default 200."
    gaps_allowed: "This number is multiplied by the window size to\\ndetermine the gap size. Must be an integer. Default:\\n3."
    fragment_size: "(Single end reads only) Size of the sequenced\\nfragment. The center of the the fragment will be taken\\nas half the fragment size. Default 150."
    false_discovery_rate_cut_off: "Remove all islands with an FDR below cutoff. Default\\n0.05."
    effective_genome_fraction: "Use a different effective genome fraction than the one\\nincluded in epic. The default value depends on the\\ngenome and readlength, but is a number between 0 and\\n1."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two\\ncolumns: chromosome names and sizes. Useful to analyze\\ncustom genomes, assemblies or simulated data. Only\\nchromosomes included in the file will be analyzed."
    store_matrix: "Store the matrix of counts per bin for ChIP and input\\nto gzipped file <STORE_MATRIX>."
    bigwig: "For each file, store a bigwig of both enriched and\\nnon-enriched regions to folder <BIGWIG>. Requires\\ndifferent basenames for each file."
    individual_log_two_fc_bigwigs: "For each file, store a bigwig of the log2fc of\\nChIP/(Sum Input) to folder <INDIVIDUAL-LOG2FC-\\nBIGWIGS>. Requires different basenames for each file."
    chip_bigwig: "Store an RPKM-normalized summed bigwig for all ChIP\\nfiles in file <CHIP-BIGWIG>."
    input_bigwig: "Store an RPKM-normalized summed bigwig for all Input\\nfiles in file <INPUT-BIGWIG>."
    log_two_fc_bigwig: "Store an log2(ChIP/Input) bigwig in file <LOG2FC-\\nBIGWIG>. (Both ChIP and Input are RPKM-normalized\\nbefore dividing.)"
    bed: "A summary bed file of all regions for display in the\\nUCSC genome browser or downstream analyses with e.g.\\nbedtools. The score field is log2(#ChIP/#Input) * 100\\ncapped at a 1000."
    log: "File to write log messages to."
    outfile: "File to write results to. By default sent to stdout."
  }
  output {
    File out_stdout = stdout()
  }
}