version 1.0

task Bedmaptypical {
  input {
    String? chrom
    String? delim
    Boolean? ec
    Boolean? faster
    Boolean? fraction_both
    Boolean? header
    Boolean? min_memory
    String? multi_delim
    Int? prec
    Boolean? sci
    Boolean? skip_unmapped
    Boolean? sweep_all
    Int? unmapped_val
    Boolean? exact
    Int? fraction_either
    Int? fraction_map
    Int? fraction_ref
    Boolean? cv
    File? kth
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
    File? t_mean
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
    Int? echo_overlap_size
    Boolean? echo_ref_name
    Boolean? echo_ref_row_id
    Boolean? echo_ref_size
    Boolean? indicator
  }
  command <<<
    bedmap_typical \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if (ec) then "--ec" else ""} \
      ~{if (faster) then "--faster" else ""} \
      ~{if (fraction_both) then "--fraction-both" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (min_memory) then "--min-memory" else ""} \
      ~{if defined(multi_delim) then ("--multidelim " +  '"' + multi_delim + '"') else ""} \
      ~{if defined(prec) then ("--prec " +  '"' + prec + '"') else ""} \
      ~{if (sci) then "--sci" else ""} \
      ~{if (skip_unmapped) then "--skip-unmapped" else ""} \
      ~{if (sweep_all) then "--sweep-all" else ""} \
      ~{if defined(unmapped_val) then ("--unmapped-val " +  '"' + unmapped_val + '"') else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if defined(fraction_either) then ("--fraction-either " +  '"' + fraction_either + '"') else ""} \
      ~{if defined(fraction_map) then ("--fraction-map " +  '"' + fraction_map + '"') else ""} \
      ~{if defined(fraction_ref) then ("--fraction-ref " +  '"' + fraction_ref + '"') else ""} \
      ~{if (cv) then "--cv" else ""} \
      ~{if defined(kth) then ("--kth " +  '"' + kth + '"') else ""} \
      ~{if (mad) then "--mad" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (max_element) then "--max-element" else ""} \
      ~{if (max_element_rand) then "--max-element-rand" else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (min_element) then "--min-element" else ""} \
      ~{if (min_element_rand) then "--min-element-rand" else ""} \
      ~{if (stdev) then "--stdev" else ""} \
      ~{if (sum) then "--sum" else ""} \
      ~{if defined(t_mean) then ("--tmean " +  '"' + t_mean + '"') else ""} \
      ~{if (variance) then "--variance" else ""} \
      ~{if (w_mean) then "--wmean" else ""} \
      ~{if (bases) then "--bases" else ""} \
      ~{if (bases_uniq) then "--bases-uniq" else ""} \
      ~{if (bases_uniq_f) then "--bases-uniq-f" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (echo) then "--echo" else ""} \
      ~{if (echo_map) then "--echo-map" else ""} \
      ~{if (echo_map_id) then "--echo-map-id" else ""} \
      ~{if (echo_map_id_uniq) then "--echo-map-id-uniq" else ""} \
      ~{if (echo_map_range) then "--echo-map-range" else ""} \
      ~{if (echo_map_score) then "--echo-map-score" else ""} \
      ~{if (echo_map_size) then "--echo-map-size" else ""} \
      ~{if defined(echo_overlap_size) then ("--echo-overlap-size " +  '"' + echo_overlap_size + '"') else ""} \
      ~{if (echo_ref_name) then "--echo-ref-name" else ""} \
      ~{if (echo_ref_row_id) then "--echo-ref-row-id" else ""} \
      ~{if (echo_ref_size) then "--echo-ref-size" else ""} \
      ~{if (indicator) then "--indicator" else ""}
  >>>
  parameter_meta {
    chrom: "Jump to and process data for given <chromosome> only."
    delim: "Change output delimiter from '|' to <delim> between columns (e.g. '\\t')."
    ec: "Error check all input files (slower)."
    faster: "(advanced) Strong input assumptions are made.  Compatible with:"
    fraction_both: ", and --exact overlap options only."
    header: "Accept headers (VCF, GFF, SAM, BED, WIG) in any input file."
    min_memory: "Minimize memory usage (slower)."
    multi_delim: "Change delimiter of multi-value output columns from ';' to <delim>."
    prec: "Change the post-decimal precision of scores to <int>.  0 <= <int>."
    sci: "Use scientific notation for score outputs."
    skip_unmapped: "Print no output for a row with no mapped elements."
    sweep_all: "Ensure <map-file> is read completely (helps to prevent broken pipes)."
    unmapped_val: "Print <val> on unmapped --echo-map* and --min/max-element* operations.\\nThe default is to print nothing."
    exact: "First 3 fields from <map-file> must be identical to <ref-file>'s."
    fraction_either: "Either --fraction-ref <val> or --fraction-map <val> must be true to\\nqualify as overlapping.  Expect 0 < val <= 1."
    fraction_map: "The fraction of the element's size from <map-file> that must overlap\\nthe element in <ref-file>.  Expect 0 < val <= 1."
    fraction_ref: "The fraction of the element's size from <ref-file> that must overlap\\nan element in <map-file>.  Expect 0 < val <= 1."
    cv: "The result of --stdev divided by the result of --mean."
    kth: "Generalized median. Report the value, x, such that the fraction <val>\\nof overlapping elements' scores from <map-file> is less than x,\\nand the fraction 1-<val> of scores is greater than x.  0 < val <= 1."
    mad: "<mult=1>      The median absolute deviation of overlapping elements in <map-file>.\\nMultiply mad score by <mult>.  0 < mult, and mult is 1 by default."
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
    t_mean: "<hi>  The mean score from overlapping elements in <map-file>, after\\nignoring the bottom <low> and top <hi> fractions of those scores.\\n0 <= low <= 1.  0 <= hi <= 1.  low+hi <= 1."
    variance: "The variance of scores from overlapping elements in <map-file>."
    w_mean: "Weighted mean, scaled in proportion to the coverage of the <ref-file>\\nelement by each overlapping <map-file> element."
    bases: "The total number of overlapping bases from <map-file>."
    bases_uniq: "The number of distinct bases from <ref-file>'s element covered by\\noverlapping elements in <map-file>."
    bases_uniq_f: "The fraction of distinct bases from <ref-file>'s element covered by\\noverlapping elements in <map-file>."
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
  }
  output {
    File out_stdout = stdout()
  }
}