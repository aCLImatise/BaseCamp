version 1.0

task SraPileupOrig {
  input {
    Boolean? aligned_region
    String? outfile
    String? table
    Boolean? bzip_two
    Boolean? gzip
    Boolean? disable_multithreading
    Boolean? timing
    File? ngc
    Int? min_mapq
    String? duplicates
    Boolean? spot_groups
    Boolean? depth_per_spot_group
    Boolean? seqname
    Boolean? min_mismatch
    Boolean? merge_dist
    Boolean? no_qual
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File path
  }
  command <<<
    sra-pileup-orig \
      ~{path} \
      ~{true="--aligned-region" false="" aligned_region} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{true="--timing" false="" timing} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(min_mapq) then ("--minmapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{true="--spotgroups" false="" spot_groups} \
      ~{true="--depth-per-spotgroup" false="" depth_per_spot_group} \
      ~{true="--seqname" false="" seqname} \
      ~{true="--minmismatch" false="" min_mismatch} \
      ~{true="--merge-dist" false="" merge_dist} \
      ~{true="--noqual" false="" no_qual} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    aligned_region: "<name[:from-to]>  Filter by position on genome. Name can  either be file specific name (ex: \"chr1\" or  \"1\"). \"from\" and \"to\" are 1-based coordinates "
    outfile: "Output will be written to this file instead  of std-out "
    table: "Which alignment table(s) to use (p|s|e):  primary, secondary,  evidence-interval (default p) "
    bzip_two: "Compress output using bzip2 "
    gzip: "Compress output using gzip "
    disable_multithreading: "disable multithreading "
    timing: "write timing log-file "
    ngc: "path to ngc file "
    min_mapq: "Minimum mapq-value,  alignments with lower  mapq will be ignored (default=0) "
    duplicates: "process duplicates 0..off/1..on "
    spot_groups: "divide by spotgroups "
    depth_per_spot_group: "print depth per spotgroup "
    seqname: "use original seq-name "
    min_mismatch: "min percent of mismatches used in function  mismatch, default is 5% "
    merge_dist: "If adjacent slices are closer than this,   they are merged and skiplist is created.   a value of zero disables the feature,  default is 10000 "
    no_qual: "omit qualities "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    path: ""
  }
}