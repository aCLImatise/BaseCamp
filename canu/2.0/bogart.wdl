version 1.0

task Bogart {
  input {
    String? mandatory_path_existing_seqstore
    String? mandatory_path_existing_ovlstore
    String? mandatory_path_output
    String? mandatory_prefix_output
    String? threads
    String? use_most_gigabytes
    Boolean? save
    Boolean? gs
    String? mr
    String? mo
    String? mi
    String? mp
    Boolean? no_filter
    String? eg
    String? em
    String? ca
    String? cp
    String? dg
    String? db
    String? dr
    String? cov_gap_olap
    String? lopsided
    String? min_olap_percent
    String? enable_loggingdebugging_specific
    String? disable_loggingdebugging_optimizepositions
    String parameters
  }
  command <<<
    bogart \
      ~{parameters} \
      ~{if defined(mandatory_path_existing_seqstore) then ("-S " +  '"' + mandatory_path_existing_seqstore + '"') else ""} \
      ~{if defined(mandatory_path_existing_ovlstore) then ("-O " +  '"' + mandatory_path_existing_ovlstore + '"') else ""} \
      ~{if defined(mandatory_path_output) then ("-T " +  '"' + mandatory_path_output + '"') else ""} \
      ~{if defined(mandatory_prefix_output) then ("-o " +  '"' + mandatory_prefix_output + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(use_most_gigabytes) then ("-M " +  '"' + use_most_gigabytes + '"') else ""} \
      ~{true="-save" false="" save} \
      ~{true="-gs" false="" gs} \
      ~{if defined(mr) then ("-mr " +  '"' + mr + '"') else ""} \
      ~{if defined(mo) then ("-mo " +  '"' + mo + '"') else ""} \
      ~{if defined(mi) then ("-mi " +  '"' + mi + '"') else ""} \
      ~{if defined(mp) then ("-mp " +  '"' + mp + '"') else ""} \
      ~{true="-nofilter" false="" no_filter} \
      ~{if defined(eg) then ("-eg " +  '"' + eg + '"') else ""} \
      ~{if defined(em) then ("-eM " +  '"' + em + '"') else ""} \
      ~{if defined(ca) then ("-ca " +  '"' + ca + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(dg) then ("-dg " +  '"' + dg + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(dr) then ("-dr " +  '"' + dr + '"') else ""} \
      ~{if defined(cov_gap_olap) then ("-covgapolap " +  '"' + cov_gap_olap + '"') else ""} \
      ~{if defined(lopsided) then ("-lopsided " +  '"' + lopsided + '"') else ""} \
      ~{if defined(min_olap_percent) then ("-minolappercent " +  '"' + min_olap_percent + '"') else ""} \
      ~{if defined(enable_loggingdebugging_specific) then ("-D " +  '"' + enable_loggingdebugging_specific + '"') else ""} \
      ~{if defined(disable_loggingdebugging_optimizepositions) then ("-d " +  '"' + disable_loggingdebugging_optimizepositions + '"') else ""}
  >>>
  parameter_meta {
    mandatory_path_existing_seqstore: "Mandatory path to an existing seqStore."
    mandatory_path_existing_ovlstore: "Mandatory path to an existing ovlStore."
    mandatory_path_output: "Mandatory path to an output tigStore (can exist or not)."
    mandatory_prefix_output: "Mandatory prefix for the output files."
    threads: "Use at most T compute threads."
    use_most_gigabytes: "Use at most 'gb' gigabytes of memory."
    save: "Save the overlap graph to disk, and continue (not implemented)."
    gs: "Genome size in bases."
    mr: "Force reads below 'len' bases to be singletons."
    mo: "Ignore overlaps shorter than 'len' bases."
    mi: "Create unitigs from contig intersections of at least 'len' bases."
    mp: "Create unitigs from contig intersections with at most 'num' placements."
    no_filter: "[coverageGap],[highError],[lopsided],[spur] Disable filtering of: coverageGap - reads that have a suspicious lack of overlaps in the middle highError   - overlaps that have error rates well outside the observed lopsided    - reads that have unusually asymmetric best overlaps spur        - reads that have no overlaps on one end The value supplied to -nofilter must be one word, case, order and punctuation do not matter.  The following examples behave the same: '-nofilter coverageGap,higherror' '-nofilter coveragegap-and-HIGHERROR'"
    eg: "Do not use overlaps more than F fraction error when when finding initial best edges."
    em: "Do not load overlaps more then F fraction error (useful only for -save)."
    ca: "Split a contig if there is an alternate path from an overlap of at least L bases. Default: 2100."
    cp: "Split a contig if there is an alternate path from an overlap at most P percent different from the length of the best overlap.  Default: 200."
    dg: "Use overlaps upto D standard deviations from the mean when building the best overlap graph.  Default 6.0."
    db: "Like -dg, but for merging bubbles into primary contigs.  Default 6.0."
    dr: "Like -dg, but for breaking repeats.  Default 3.0."
    cov_gap_olap: "Require overlaps to overlap by at least n bases."
    lopsided: "n      Set how lopsided reads are detected and/or treated. m = off        - don't detect at all (omit n parameter) m = noseed n   - detect, n% difference, allow edges to but don't seed overlaps with them m = nobest n   - detect, n% difference, exclude from bog graph completely"
    min_olap_percent: "Set a minimum overlap length, per overlap, as f*min(readAlen, readBlen)"
    enable_loggingdebugging_specific: "enable logging/debugging for a specific component."
    disable_loggingdebugging_optimizepositions: "disable logging/debugging for a specific component. overlapScoring bestOverlaps errorProfiles optimizePositions chunkGraph buildUnitig placeUnplaced orphans splitDiscontinuous intermediateTigs setParentAndHang stderr"
    parameters: ""
  }
}