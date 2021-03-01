version 1.0

task Srapileuporig2109 {
  input {
    Boolean? aligned_region
    File? outfile
    String? table
    Boolean? bzip_two
    Boolean? gzip
    Boolean? disable_multithreading
    Boolean? timing
    File? ngc
    Int? min_mapq
    Int? duplicates
    Boolean? spot_groups
    Boolean? depth_per_spot_group
    Boolean? seqname
    Boolean? min_mismatch
    Boolean? merge_dist
    Boolean? no_qual
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    sra_pileup_orig_2_10_9 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (aligned_region) then "--aligned-region" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if (timing) then "--timing" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(min_mapq) then ("--minmapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{if (spot_groups) then "--spotgroups" else ""} \
      ~{if (depth_per_spot_group) then "--depth-per-spotgroup" else ""} \
      ~{if (seqname) then "--seqname" else ""} \
      ~{if (min_mismatch) then "--minmismatch" else ""} \
      ~{if (merge_dist) then "--merge-dist" else ""} \
      ~{if (no_qual) then "--noqual" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    aligned_region: "<name[:from-to]>  Filter by position on genome. Name can\\neither be file specific name (ex: \\\"chr1\\\" or\\n\\\"1\\\"). \\\"from\\\" and \\\"to\\\" are 1-based coordinates"
    outfile: "Output will be written to this file instead\\nof std-out"
    table: "Which alignment table(s) to use (p|s|e):\\nprimary, secondary,\\nevidence-interval (default p)"
    bzip_two: "Compress output using bzip2"
    gzip: "Compress output using gzip"
    disable_multithreading: "disable multithreading"
    timing: "write timing log-file"
    ngc: "path to ngc file"
    min_mapq: "Minimum mapq-value,  alignments with lower\\nmapq will be ignored (default=0)"
    duplicates: "process duplicates 0..off/1..on"
    spot_groups: "divide by spotgroups"
    depth_per_spot_group: "print depth per spotgroup"
    seqname: "use original seq-name"
    min_mismatch: "min percent of mismatches used in function\\nmismatch, default is 5%"
    merge_dist: "If adjacent slices are closer than this,\\nthey are merged and skiplist is created.\\na value of zero disables the feature,\\ndefault is 10000"
    no_qual: "omit qualities"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "sra-pileup-orig.2.10.9 : 2.10.9"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}