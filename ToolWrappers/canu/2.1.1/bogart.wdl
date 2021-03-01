version 1.0

task Bogart {
  input {
    File? mandatory_path_existing_seqstore
    File? mandatory_path_existing_ovlstore
    File? mandatory_path_tigstore
    String? mandatory_prefix_output
    String? threads
    String? use_most_gigabytes
    Boolean? gs
    String? mr
    String? mo
    String? mi
    Int? mp
    Boolean? no_filter
    String? eg
    String? em
    Float? ep
    File? ca
    Int? cp
    Float? dg
    Float? db
    Float? dr
    String? cov_gap_type
    String? cov_gap_olap
    String? lopsided
    Int? min_olap_percent
    Float? min_reads_best
    String? enable_loggingdebugging_specific
    String? disable_loggingdebugging_specific
    String overlap_scoring
    String best_overlaps
    String optimize_positions
    String build_unit_ig
    String orphans
    String intermediate_tig_s
    String stderr
  }
  command <<<
    bogart \
      ~{overlap_scoring} \
      ~{best_overlaps} \
      ~{optimize_positions} \
      ~{build_unit_ig} \
      ~{orphans} \
      ~{intermediate_tig_s} \
      ~{stderr} \
      ~{if defined(mandatory_path_existing_seqstore) then ("-S " +  '"' + mandatory_path_existing_seqstore + '"') else ""} \
      ~{if defined(mandatory_path_existing_ovlstore) then ("-O " +  '"' + mandatory_path_existing_ovlstore + '"') else ""} \
      ~{if defined(mandatory_path_tigstore) then ("-T " +  '"' + mandatory_path_tigstore + '"') else ""} \
      ~{if defined(mandatory_prefix_output) then ("-o " +  '"' + mandatory_prefix_output + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(use_most_gigabytes) then ("-M " +  '"' + use_most_gigabytes + '"') else ""} \
      ~{if (gs) then "-gs" else ""} \
      ~{if defined(mr) then ("-mr " +  '"' + mr + '"') else ""} \
      ~{if defined(mo) then ("-mo " +  '"' + mo + '"') else ""} \
      ~{if defined(mi) then ("-mi " +  '"' + mi + '"') else ""} \
      ~{if defined(mp) then ("-mp " +  '"' + mp + '"') else ""} \
      ~{if (no_filter) then "-nofilter" else ""} \
      ~{if defined(eg) then ("-eg " +  '"' + eg + '"') else ""} \
      ~{if defined(em) then ("-eM " +  '"' + em + '"') else ""} \
      ~{if defined(ep) then ("-ep " +  '"' + ep + '"') else ""} \
      ~{if defined(ca) then ("-ca " +  '"' + ca + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(dg) then ("-dg " +  '"' + dg + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(dr) then ("-dr " +  '"' + dr + '"') else ""} \
      ~{if defined(cov_gap_type) then ("-covgaptype " +  '"' + cov_gap_type + '"') else ""} \
      ~{if defined(cov_gap_olap) then ("-covgapolap " +  '"' + cov_gap_olap + '"') else ""} \
      ~{if defined(lopsided) then ("-lopsided " +  '"' + lopsided + '"') else ""} \
      ~{if defined(min_olap_percent) then ("-minolappercent " +  '"' + min_olap_percent + '"') else ""} \
      ~{if defined(min_reads_best) then ("-minreadsbest " +  '"' + min_reads_best + '"') else ""} \
      ~{if defined(enable_loggingdebugging_specific) then ("-D " +  '"' + enable_loggingdebugging_specific + '"') else ""} \
      ~{if defined(disable_loggingdebugging_specific) then ("-d " +  '"' + disable_loggingdebugging_specific + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    mandatory_path_existing_seqstore: "Mandatory path to an existing seqStore."
    mandatory_path_existing_ovlstore: "Mandatory path to an existing ovlStore."
    mandatory_path_tigstore: "Mandatory path to an output tigStore (can exist or not)."
    mandatory_prefix_output: "Mandatory prefix for the output files."
    threads: "Use at most T compute threads."
    use_most_gigabytes: "Use at most 'gb' gigabytes of memory."
    gs: "Genome size in bases."
    mr: "Force reads below 'len' bases to be singletons."
    mo: "Ignore overlaps shorter than 'len' bases."
    mi: "Create unitigs from contig intersections of at least 'len' bases."
    mp: "Create unitigs from contig intersections with at most 'num' placements."
    no_filter: "[coverageGap],[highError],[lopsided],[spur]\\nDisable filtering of:\\ncoverageGap - reads that have a suspicious lack of overlaps in the middle\\nhighError   - overlaps that have error rates well outside the observed\\nlopsided    - reads that have unusually asymmetric best overlaps\\nspur        - reads that have no overlaps on one end\\nThe value supplied to -nofilter must be one word, case, order and punctuation\\ndo not matter.  The following examples behave the same:\\n'-nofilter coverageGap,higherror'\\n'-nofilter coveragegap-and-HIGHERROR'"
    eg: "Do not use overlaps more than F fraction error when when finding initial best edges."
    em: "Do not load overlaps more then F fraction error (useful only for -save)."
    ep: "When deciding which overlaps to use, fall back to percentile P (0.0-1.0) if\\nthe median error is 0.0, as commonly found in PacBio HiFi reads.  Default: 0.9"
    ca: "Split a contig if there is an alternate path from an overlap of at least L bases.\\nDefault: 2100."
    cp: "Split a contig if there is an alternate path from an overlap at most P percent\\ndifferent from the length of the best overlap.  Default: 200."
    dg: "Use overlaps upto D standard deviations from the mean when building the best\\noverlap graph.  Default 6.0."
    db: "Like -dg, but for merging bubbles into primary contigs.  Default 6.0."
    dr: "Like -dg, but for breaking repeats.  Default 3.0."
    cov_gap_type: "Set covgap pattern: none, chimer, uncovered, deadend."
    cov_gap_olap: "Require overlaps to overlap by at least n bases."
    lopsided: "n      Set how lopsided reads are detected and/or treated.\\nm = off        - don't detect at all (omit n parameter)\\nm = noseed n   - detect, n% difference, allow edges to but don't seed overlaps with them\\nm = nobest n   - detect, n% difference, exclude from bog graph completely"
    min_olap_percent: "Set a minimum overlap length, per overlap, as f*min(readAlen, readBlen)"
    min_reads_best: "Automatically relax overlap quality requirements if there are fewer\\nthan fraction f (0.0-1.0) reads that have two best edges.  Default: 0.9"
    enable_loggingdebugging_specific: "enable logging/debugging for a specific component."
    disable_loggingdebugging_specific: "disable logging/debugging for a specific component."
    overlap_scoring: "bestEdges"
    best_overlaps: "errorProfiles"
    optimize_positions: "chunkGraph"
    build_unit_ig: "placeUnplaced"
    orphans: "splitDiscontinuous"
    intermediate_tig_s: "setParentAndHang"
    stderr: "Unknown option '--help'."
  }
  output {
    File out_stdout = stdout()
    File out_mandatory_path_tigstore = "${in_mandatory_path_tigstore}"
  }
}