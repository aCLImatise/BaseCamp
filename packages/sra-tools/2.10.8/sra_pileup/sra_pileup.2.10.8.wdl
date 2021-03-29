version 1.0

task Srapileup2108 {
  input {
    Boolean? aligned_region
    File? outfile
    String? table
    Boolean? bzip_two
    Boolean? gzip
    Boolean? timing
    Int? min_mapq
    Int? duplicates
    Boolean? spot_groups
    Boolean? depth_per_spot_group
    Boolean? seqname
    Int? min_mismatch
    Int? merge_dist
    Boolean? no_qual
    Int? function
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    Int? log_level
    File? option_file
    File file_dot
  }
  command <<<
    sra_pileup_2_10_8 \
      ~{file_dot} \
      ~{if (aligned_region) then "--aligned-region" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (timing) then "--timing" else ""} \
      ~{if defined(min_mapq) then ("--minmapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{if (spot_groups) then "--spotgroups" else ""} \
      ~{if (depth_per_spot_group) then "--depth-per-spotgroup" else ""} \
      ~{if (seqname) then "--seqname" else ""} \
      ~{if defined(min_mismatch) then ("--minmismatch " +  '"' + min_mismatch + '"') else ""} \
      ~{if defined(merge_dist) then ("--merge-dist " +  '"' + merge_dist + '"') else ""} \
      ~{if (no_qual) then "--noqual" else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligned_region: "<name[:from-to]>[,...]\\nFilter by position on genome. Name can\\neither be file specific name (ex: \\\"chr1\\\"\\nor \\\"1\\\"). \\\"from\\\" and \\\"to\\\" (inclusive) are\\n1-based coordinates"
    outfile: "Output will be written to this file\\ninstead of std-out"
    table: "Which alignment table(s) to use (p|s|e):\\nprimary, secondary, evidence-interval\\n(default p)"
    bzip_two: "Compress output using bzip2"
    gzip: "Compress output using gzip"
    timing: "write timing log-file"
    min_mapq: "Minimum mapq-value, alignments with lower\\nmapq will be ignored (default=0)"
    duplicates: "process duplicates 0..off/1..on"
    spot_groups: "divide by spotgroups"
    depth_per_spot_group: "print depth per spotgroup"
    seqname: "use original seq-name"
    min_mismatch: "min percent of mismatches used in function\\nmismatch, default is 5%"
    merge_dist: "If adjacent slices are closer than this,\\nthey are merged and skiplist is created.\\na value of zero disables the feature,\\ndefault is 10000"
    no_qual: "omit qualities (faster)"
    function: "ref = list references, ref-ex = list\\nreferences with coverage, count = sort\\npileup with counters stat = strand/tlen\\nstatistic, mismatch = only lines with\\nmismatches, index = list deletions\\ncounts varcount = variation counters (\\ncolumns: ref-name, ref-pos, ref-base,\\ncoverage, mismatch A mismatch C,\\nmismatch G, mismatch T, deletes,\\ninserts, ins after A, ins after C ins\\nafter G ins after T ) deletes = list\\ndeletions greater than 20, indels = list\\nonly inserts/deletions"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}