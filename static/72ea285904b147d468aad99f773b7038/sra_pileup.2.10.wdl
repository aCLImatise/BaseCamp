version 1.0

task SraPileup.2.10.7 {
  input {
    Boolean? aligned_region
    String? outfile
    String? table
    Boolean? bzip_two
    Boolean? gzip
    Boolean? timing
    String? min_mapq
    String? duplicates
    Boolean? spot_groups
    Boolean? depth_per_spot_group
    Boolean? seqname
    String? min_mismatch
    String? merge_dist
    Boolean? no_qual
    String? function
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    sra-pileup.2.10.7 \
      ~{true="--aligned-region" false="" aligned_region} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--timing" false="" timing} \
      ~{if defined(min_mapq) then ("--minmapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{true="--spotgroups" false="" spot_groups} \
      ~{true="--depth-per-spotgroup" false="" depth_per_spot_group} \
      ~{true="--seqname" false="" seqname} \
      ~{if defined(min_mismatch) then ("--minmismatch " +  '"' + min_mismatch + '"') else ""} \
      ~{if defined(merge_dist) then ("--merge-dist " +  '"' + merge_dist + '"') else ""} \
      ~{true="--noqual" false="" no_qual} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    aligned_region: "<name[:from-to]>[,...] Filter by position on genome. Name can either be file specific name (ex: \"chr1\" or \"1\"). \"from\" and \"to\" (inclusive) are 1-based coordinates"
    outfile: "Output will be written to this file instead of std-out"
    table: "Which alignment table(s) to use (p|s|e): primary, secondary, evidence-interval (default p)"
    bzip_two: "Compress output using bzip2"
    gzip: "Compress output using gzip"
    timing: "write timing log-file"
    min_mapq: "Minimum mapq-value, alignments with lower mapq will be ignored (default=0)"
    duplicates: "process duplicates 0..off/1..on"
    spot_groups: "divide by spotgroups"
    depth_per_spot_group: "print depth per spotgroup"
    seqname: "use original seq-name"
    min_mismatch: "min percent of mismatches used in function mismatch, default is 5%"
    merge_dist: "If adjacent slices are closer than this, they are merged and skiplist is created. a value of zero disables the feature, default is 10000"
    no_qual: "omit qualities (faster)"
    function: "ref = list references, ref-ex = list references with coverage, count = sort pileup with counters stat = strand/tlen statistic, mismatch = only lines with mismatches, index = list deletions counts varcount = variation counters ( columns: ref-name, ref-pos, ref-base, coverage, mismatch A mismatch C, mismatch G, mismatch T, deletes, inserts, ins after A, ins after C ins after G ins after T ) deletes = list deletions greater than 20, indels = list only inserts/deletions"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}