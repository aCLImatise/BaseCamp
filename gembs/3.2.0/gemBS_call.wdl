version 1.0

task GemBSCall {
  input {
    Array[String] contig_list
    String? sample_name
    String? barcode
    String? mapq_threshold
    String? qual_threshold
    String? right_trim
    String? left_trim
    String? threads
    String? jobs
    Boolean? keep_duplicates
    Boolean? ignore_duplicate_flag
    Boolean? keep_unmatched
    String? species
    Boolean? remove
    String? haploid
    String? conversion
    String? reference_bias
    Boolean? concat_only
    Boolean? no_merge
    String? pool
    Boolean? list_pools
    Boolean? dry_run
    String? json
    Boolean? ignore_db
    Boolean? ignore_dep
  }
  command <<<
    gemBS call \
      ~{if defined(contig_list) then ("--contig-list " +  '"' + contig_list + '"') else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{if defined(mapq_threshold) then ("--mapq-threshold " +  '"' + mapq_threshold + '"') else ""} \
      ~{if defined(qual_threshold) then ("--qual-threshold " +  '"' + qual_threshold + '"') else ""} \
      ~{if defined(right_trim) then ("--right-trim " +  '"' + right_trim + '"') else ""} \
      ~{if defined(left_trim) then ("--left-trim " +  '"' + left_trim + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{true="--keep-duplicates" false="" keep_duplicates} \
      ~{true="--ignore_duplicate_flag" false="" ignore_duplicate_flag} \
      ~{true="--keep-unmatched" false="" keep_unmatched} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{true="--remove" false="" remove} \
      ~{if defined(haploid) then ("--haploid " +  '"' + haploid + '"') else ""} \
      ~{if defined(conversion) then ("--conversion " +  '"' + conversion + '"') else ""} \
      ~{if defined(reference_bias) then ("--reference-bias " +  '"' + reference_bias + '"') else ""} \
      ~{true="--concat-only" false="" concat_only} \
      ~{true="--no-merge" false="" no_merge} \
      ~{if defined(pool) then ("--pool " +  '"' + pool + '"') else ""} \
      ~{true="--list-pools" false="" list_pools} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{true="--ignore-db" false="" ignore_db} \
      ~{true="--ignore-dep" false="" ignore_dep}
  >>>
  parameter_meta {
    contig_list: "List of contigs on which to perform the methylation calling."
    sample_name: "Name of sample to be called"
    barcode: "Barcode of sample to be called"
    mapq_threshold: "Threshold for MAPQ scores"
    qual_threshold: "Threshold for base quality scores"
    right_trim: "Bases to trim from right of read pair, Default: 0"
    left_trim: "Bases to trim from left of read pair, Default: 5"
    threads: "Number of threads, Default: 1"
    jobs: "Number of parallel jobs"
    keep_duplicates: "Do not merge duplicate reads."
    ignore_duplicate_flag: "Ignore duplicate flag from SAM/BAM files."
    keep_unmatched: "Do not discard reads that do not form proper pairs."
    species: "Sample species name. Default: None"
    remove: "Remove individual BCF files after merging."
    haploid: "Force genotype calls to be homozygous"
    conversion: "Set under and over conversion rates (under,over)"
    reference_bias: "Set bias to reference homozygote"
    concat_only: "Only perform merging BCF files."
    no_merge: "Do not automatically merge BCFs"
    pool: "Contig pool on which to perform the methylation calling."
    list_pools: "[LEVEL]  List contig pools and exit. Level 1 - list names, level > 1 - list pool composition"
    dry_run: "Output mapping commands without execution"
    json: "FILE      Output JSON file with details of pending commands"
    ignore_db: "Ignore database for --dry-run and --json commands"
    ignore_dep: "Ignore dependencies for --dry-run and --json commands"
  }
}