version 1.0

task BedmapTypical {
  input {
    String? chrom
    String? delim
    Boolean? ec
    Boolean? faster
    Boolean? header
    Boolean? min_memory
    String? multi_delim
    Int? prec
    Boolean? sci
    Boolean? skip_unmapped
    Boolean? sweep_all
    String? unmapped_val
    Int? bp_ovr
    Boolean? exact
    String? fraction_both
    String? fraction_either
    String? fraction_map
    String? fraction_ref
    Int? range
    Boolean? cv
    String? kth
    Boolean? mad
    Boolean? max
    Boolean? max_element
    Boolean? max_element_rand
    Boolean? mean
    Boolean? median
    Boolean? min
    Boolean? min_element
    Boolean? min_element_rand
    Boolean? stdev
    Boolean? sum
    String? t_mean
    Boolean? variance
    Boolean? w_mean
    Boolean? bases
    Boolean? bases_uniq
    Boolean? bases_uniq_f
    Boolean? count
    Boolean? echo
    Boolean? echo_map
    Boolean? echo_map_id
    Boolean? echo_map_id_uniq
    Boolean? echo_map_range
    Boolean? echo_map_score
    Boolean? echo_map_size
    String? echo_overlap_size
    Boolean? echo_ref_name
    Boolean? echo_ref_row_id
    Boolean? echo_ref_size
    Boolean? indicator
    String bed_map
    String? process_flags
    String? overlap_option
  }
  command <<<
    bedmap-typical \
      ~{bed_map} \
      ~{process_flags} \
      ~{overlap_option} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{true="--ec" false="" ec} \
      ~{true="--faster" false="" faster} \
      ~{true="--header" false="" header} \
      ~{true="--min-memory" false="" min_memory} \
      ~{if defined(multi_delim) then ("--multidelim " +  '"' + multi_delim + '"') else ""} \
      ~{if defined(prec) then ("--prec " +  '"' + prec + '"') else ""} \
      ~{true="--sci" false="" sci} \
      ~{true="--skip-unmapped" false="" skip_unmapped} \
      ~{true="--sweep-all" false="" sweep_all} \
      ~{if defined(unmapped_val) then ("--unmapped-val " +  '"' + unmapped_val + '"') else ""} \
      ~{if defined(bp_ovr) then ("--bp-ovr " +  '"' + bp_ovr + '"') else ""} \
      ~{true="--exact" false="" exact} \
      ~{if defined(fraction_both) then ("--fraction-both " +  '"' + fraction_both + '"') else ""} \
      ~{if defined(fraction_either) then ("--fraction-either " +  '"' + fraction_either + '"') else ""} \
      ~{if defined(fraction_map) then ("--fraction-map " +  '"' + fraction_map + '"') else ""} \
      ~{if defined(fraction_ref) then ("--fraction-ref " +  '"' + fraction_ref + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{true="--cv" false="" cv} \
      ~{if defined(kth) then ("--kth " +  '"' + kth + '"') else ""} \
      ~{true="--mad" false="" mad} \
      ~{true="--max" false="" max} \
      ~{true="--max-element" false="" max_element} \
      ~{true="--max-element-rand" false="" max_element_rand} \
      ~{true="--mean" false="" mean} \
      ~{true="--median" false="" median} \
      ~{true="--min" false="" min} \
      ~{true="--min-element" false="" min_element} \
      ~{true="--min-element-rand" false="" min_element_rand} \
      ~{true="--stdev" false="" stdev} \
      ~{true="--sum" false="" sum} \
      ~{if defined(t_mean) then ("--tmean " +  '"' + t_mean + '"') else ""} \
      ~{true="--variance" false="" variance} \
      ~{true="--wmean" false="" w_mean} \
      ~{true="--bases" false="" bases} \
      ~{true="--bases-uniq" false="" bases_uniq} \
      ~{true="--bases-uniq-f" false="" bases_uniq_f} \
      ~{true="--count" false="" count} \
      ~{true="--echo" false="" echo} \
      ~{true="--echo-map" false="" echo_map} \
      ~{true="--echo-map-id" false="" echo_map_id} \
      ~{true="--echo-map-id-uniq" false="" echo_map_id_uniq} \
      ~{true="--echo-map-range" false="" echo_map_range} \
      ~{true="--echo-map-score" false="" echo_map_score} \
      ~{true="--echo-map-size" false="" echo_map_size} \
      ~{if defined(echo_overlap_size) then ("--echo-overlap-size " +  '"' + echo_overlap_size + '"') else ""} \
      ~{true="--echo-ref-name" false="" echo_ref_name} \
      ~{true="--echo-ref-row-id" false="" echo_ref_row_id} \
      ~{true="--echo-ref-size" false="" echo_ref_size} \
      ~{true="--indicator" false="" indicator}
  >>>
  parameter_meta {
    chrom: "Jump to and process data for given <chromosome> only.                   "
    delim: "Change output delimiter from '|' to <delim> between columns (e.g. '\t')."
    ec: "Error check all input files (slower).                                   "
    faster: "(advanced) Strong input assumptions are made.  Compatible with:          --bp-ovr, --range, --fraction-both, and --exact overlap options only. "
    header: "Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.             "
    min_memory: "Minimize memory usage (slower).                                         "
    multi_delim: "Change delimiter of multi-value output columns from ';' to <delim>.     "
    prec: "Change the post-decimal precision of scores to <int>.  0 <= <int>.      "
    sci: "Use scientific notation for score outputs.                              "
    skip_unmapped: "Print no output for a row with no mapped elements.                      "
    sweep_all: "Ensure <map-file> is read completely (helps to prevent broken pipes).   "
    unmapped_val: "Print <val> on unmapped --echo-map* and --min/max-element* operations.   The default is to print nothing.                                      "
    bp_ovr: "Require <int> bp overlap between elements of input files.            "
    exact: "First 3 fields from <map-file> must be identical to <ref-file>'s.    "
    fraction_both: "Both --fraction-ref <val> and --fraction-map <val> must be true to    qualify as overlapping.  Expect 0 < val <= 1.                      "
    fraction_either: "Either --fraction-ref <val> or --fraction-map <val> must be true to   qualify as overlapping.  Expect 0 < val <= 1.                      "
    fraction_map: "The fraction of the element's size from <map-file> that must overlap  the element in <ref-file>.  Expect 0 < val <= 1.                   "
    fraction_ref: "The fraction of the element's size from <ref-file> that must overlap  an element in <map-file>.  Expect 0 < val <= 1.                    "
    range: "Grab <map-file> elements within <int> bp of <ref-file>'s element,     where 0 <= int.  --range 0 is an alias for --bp-ovr 1.             "
    cv: "The result of --stdev divided by the result of --mean."
    kth: "Generalized median. Report the value, x, such that the fraction <val> of overlapping elements' scores from <map-file> is less than x, and the fraction 1-<val> of scores is greater than x.  0 < val <= 1."
    mad: "<mult=1>      The median absolute deviation of overlapping elements in <map-file>. Multiply mad score by <mult>.  0 < mult, and mult is 1 by default."
    max: "The highest score from overlapping elements in <map-file>."
    max_element: "A (non-random) highest-scoring and overlapping element in <map-file>."
    max_element_rand: "A random highest-scoring and overlapping element in <map-file>."
    mean: "The average score from overlapping elements in <map-file>."
    median: "The median score from overlapping elements in <map-file>."
    min: "The lowest score from overlapping elements in <map-file>."
    min_element: "A (non-random) lowest-scoring and overlapping element in <map-file>."
    min_element_rand: "A random lowest-scoring and overlapping element in <map-file>."
    stdev: "The square root of the result of --variance."
    sum: "Accumulated scores from overlapping elements in <map-file>."
    t_mean: "<hi>  The mean score from overlapping elements in <map-file>, after ignoring the bottom <low> and top <hi> fractions of those scores. 0 <= low <= 1.  0 <= hi <= 1.  low+hi <= 1."
    variance: "The variance of scores from overlapping elements in <map-file>."
    w_mean: "Weighted mean, scaled in proportion to the coverage of the <ref-file> element by each overlapping <map-file> element."
    bases: "The total number of overlapping bases from <map-file>."
    bases_uniq: "The number of distinct bases from <ref-file>'s element covered by overlapping elements in <map-file>."
    bases_uniq_f: "The fraction of distinct bases from <ref-file>'s element covered by overlapping elements in <map-file>."
    count: "The number of overlapping elements in <map-file>."
    echo: "Print each line from <ref-file>."
    echo_map: "List all overlapping elements from <map-file>."
    echo_map_id: "List IDs from all overlapping <map-file> elements."
    echo_map_id_uniq: "List unique IDs from overlapping <map-file> elements."
    echo_map_range: "Print genomic range of overlapping elements from <map-file>."
    echo_map_score: "List scores from overlapping <map-file> elements."
    echo_map_size: "List the full length of every overlapping element."
    echo_overlap_size: "lengths of overlaps."
    echo_ref_name: "Print the first 3 fields of <ref-file> using chrom:start-end format."
    echo_ref_row_id: "Print 'id-' followed by the line number of <ref-file>."
    echo_ref_size: "Print the length of each line from <ref-file>."
    indicator: "Print 1 if there exists an overlapping element in <map-file>, 0 otherwise."
    bed_map: ""
    process_flags: ""
    overlap_option: ""
  }
}