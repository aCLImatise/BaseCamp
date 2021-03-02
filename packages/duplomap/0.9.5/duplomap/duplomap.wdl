version 1.0

task Duplomap {
  input {
    File? input_reads_sorted
    Boolean? database
    File? reference
    Directory? output_directory
    Int? threads
    Directory? force
    Directory? continue
    Int? iterations
    String? log
    File? sam_tools
    Int? minimap_km_er
    Int? preset
    Float? gt_prior
    Float? relative_padding
    Float? psv_complexity
    Int? psv_size_diff
    Int? gt_min_mapq
    Float? read_psv_impact
    Float? ambiguous
    Float? copy_num_perc
    Int? unknown_regions
    Int? filtering_km_er
    Float? filtering_p_value
    Int? max_locations
    Float? conflicts_p_value
    Int? min_conflicts
    Int? skip_mapq
    Int? secondary
    Int? first
    Boolean? generated
    Boolean? skip_unique
    File? skip_vcf
    Boolean? keep
    Boolean? default_hmm
    Boolean? output_debug
  }
  command <<<
    duplomap \
      ~{if defined(input_reads_sorted) then ("--input " +  '"' + input_reads_sorted + '"') else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(minimap_km_er) then ("--minimap-kmer " +  '"' + minimap_km_er + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(gt_prior) then ("--gt-prior " +  '"' + gt_prior + '"') else ""} \
      ~{if defined(relative_padding) then ("--relative-padding " +  '"' + relative_padding + '"') else ""} \
      ~{if defined(psv_complexity) then ("--psv-complexity " +  '"' + psv_complexity + '"') else ""} \
      ~{if defined(psv_size_diff) then ("--psv-size-diff " +  '"' + psv_size_diff + '"') else ""} \
      ~{if defined(gt_min_mapq) then ("--gt-min-mapq " +  '"' + gt_min_mapq + '"') else ""} \
      ~{if defined(read_psv_impact) then ("--read-psv-impact " +  '"' + read_psv_impact + '"') else ""} \
      ~{if defined(ambiguous) then ("--ambiguous " +  '"' + ambiguous + '"') else ""} \
      ~{if defined(copy_num_perc) then ("--copy-num-perc " +  '"' + copy_num_perc + '"') else ""} \
      ~{if defined(unknown_regions) then ("--unknown-regions " +  '"' + unknown_regions + '"') else ""} \
      ~{if defined(filtering_km_er) then ("--filtering-kmer " +  '"' + filtering_km_er + '"') else ""} \
      ~{if defined(filtering_p_value) then ("--filtering-p-value " +  '"' + filtering_p_value + '"') else ""} \
      ~{if defined(max_locations) then ("--max-locations " +  '"' + max_locations + '"') else ""} \
      ~{if defined(conflicts_p_value) then ("--conflicts-p-value " +  '"' + conflicts_p_value + '"') else ""} \
      ~{if defined(min_conflicts) then ("--min-conflicts " +  '"' + min_conflicts + '"') else ""} \
      ~{if defined(skip_mapq) then ("--skip-mapq " +  '"' + skip_mapq + '"') else ""} \
      ~{if defined(secondary) then ("--secondary " +  '"' + secondary + '"') else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if (generated) then "--generated" else ""} \
      ~{if (skip_unique) then "--skip-unique" else ""} \
      ~{if (skip_vcf) then "--skip-vcf" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (default_hmm) then "--default-hmm" else ""} \
      ~{if (output_debug) then "--output-debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/duplomap:0.9.5--hed695b0_0"
  }
  parameter_meta {
    input_reads_sorted: "Input reads in the sorted and indexed bam format."
    database: "<FILE|DIR+>                        Database file or directory (multiple entries allowed)."
    reference: "Reference genome in the indexed fasta format."
    output_directory: "Output directory."
    threads: "Number of threads to use. [default: 4]"
    force: "Force work with non-empty output directory."
    continue: "Continue duplomap run in the same output directory. In that case duplomap will skip already analyzed\\nduplications clusters (be careful to use the same command line arguments)."
    iterations: "Maximum number of iterations of EM-algorithm. [default: 100]"
    log: "Logging level in log files (stderr shows logs with info level and higher). [default: debug]  [possible\\nvalues: trace, debug, info, warning, error, critical, none]"
    sam_tools: "Path to Samtools executable. [default: samtools]"
    minimap_km_er: "Minimap2 k-mer size. [default: 11]"
    preset: "Minimap2 alignment preset. Possible values: pacbio [pb] and nanopore [ont] [default: pacbio]  [possible\\nvalues: pacbio, pb, nanopore, ont]"
    gt_prior: "Reference genotype prior. [default: 0.95]"
    relative_padding: "Padding added to the sides of possible read locations. For example, for a read with with length 3,000 and\\nrelative-padding 0.01, possible locations would be padded by 30 bp on both sides. [default: 0.01]"
    psv_complexity: "<FLOAT>\\nKeep PSVs that have complexity higher than FLOAT[1] for substitutions (0.6 by default), and FLOAT[2] for\\nindels (0.8 by default)."
    psv_size_diff: "Maximal difference in sizes of the PSV sequences (including anchors). PSVs with bigger difference are not\\nused, but influence pre-PSV LCS comparison. [default: 10]"
    gt_min_mapq: "Do not use reads with MAPQ lower than INT to determine genotype probabilities. [default: 30]"
    read_psv_impact: "Maximal read-PSV impact. A single read cannot decrease genotype probability of a PSV by more than 10^FLOAT,\\nand a single PSV cannot affect location probabilities by more than 10^FLOAT. [default: 3]"
    ambiguous: "<FLOAT>\\nA read is aligned to a PSV ambiguously if local alignment probabilities between the read and the PSV alleles\\nare within FLOAT[1]-fold range (max(probabilities) < min(probabilities) * FLOAT[1]). If the PSV has more\\nthan FLOAT[2] percent ambiguously aligned reads, it is not used.\\n[default: 4 30]"
    copy_num_perc: "Do not realign reads that overlap high copy number regions by more than FLOAT %. High copy number regions\\nare defined in duplomap-prepare with --skip-copy-num. [default: 50]"
    unknown_regions: "How to process reads that overlap unknown regions in the reference:\\nrealign  - Realign a read and assign appropriate MAPQ,\\nkeep-old - Keep an old alignment and MAPQ,\\nmapq0    - Keep an old alignment and set MAPQ to 0.\\n[default: realign]  [possible values: realign, keep-old, mapq0]"
    filtering_km_er: "k-mer size used for filtering possible location for a read. [default: 11]"
    filtering_p_value: "We compare LCS paths of a read and its possible locations. If location A is better than location B with p-\\nvalue lower than FLOAT, location B may be discarded. [default: 1e-4]"
    max_locations: "Maximal number of locations after filtering. If read can align to more than INT locations, it will get the\\noriginal alignment and MAPQ 0. [default: 50]"
    conflicts_p_value: "Each read is put through Binomial test with the number of conflicting PSVs out of all homozygous PSVs. All\\nreads that fail the test are assigned low MAPQ. The threshold p-value is divided by the number of reads in\\neach component according to the Bonferroni correction. [default: 0.05]"
    min_conflicts: "Minimal number of conflicts between a read and PSVs to discard the read. [default: 5]"
    skip_mapq: "Skip reads with mapping quality at least INT in the original alignment. These reads will be used to estimate\\ngenotypes, but will not be realigned. [default: none]"
    secondary: "Output at most INT secondary alignments for each realigned read. Use \\\"all\\\" to output all secondary\\nalignments. [default: 0]"
    first: "<INT>\\nUse first INT[1] databases and first INT[2] reads for each database. Use all databases/reads when INT = 0."
    generated: "Reads are generated and the true position is known."
    skip_unique: "Do not output reads from unique (not duplicated) regions."
    skip_vcf: "Do not output vcf file with genotyped PSVs."
    keep: "Do not clean, keep all output files."
    default_hmm: "Use default HMM parameters (instead of estimating using reads)."
    output_debug: "Output additional CSV files."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_force = "${in_force}"
    Directory out_continue = "${in_continue}"
    File out_skip_vcf = "${in_skip_vcf}"
  }
}