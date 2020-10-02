class: CommandLineTool
id: bedmap_megarow.cwl
inputs:
- id: in_chrom
  doc: Jump to and process data for given <chromosome> only.
  type: string
  inputBinding:
    prefix: --chrom
- id: in_delim
  doc: Change output delimiter from '|' to <delim> between columns (e.g. '\t').
  type: string
  inputBinding:
    prefix: --delim
- id: in_ec
  doc: Error check all input files (slower).
  type: boolean
  inputBinding:
    prefix: --ec
- id: in_faster
  doc: '(advanced) Strong input assumptions are made.  Compatible with:'
  type: boolean
  inputBinding:
    prefix: --faster
- id: in_fraction_both
  doc: ', and --exact overlap options only.'
  type: boolean
  inputBinding:
    prefix: --fraction-both
- id: in_header
  doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  type: boolean
  inputBinding:
    prefix: --header
- id: in_min_memory
  doc: Minimize memory usage (slower).
  type: boolean
  inputBinding:
    prefix: --min-memory
- id: in_multi_delim
  doc: Change delimiter of multi-value output columns from ';' to <delim>.
  type: string
  inputBinding:
    prefix: --multidelim
- id: in_prec
  doc: Change the post-decimal precision of scores to <int>.  0 <= <int>.
  type: long
  inputBinding:
    prefix: --prec
- id: in_sci
  doc: Use scientific notation for score outputs.
  type: boolean
  inputBinding:
    prefix: --sci
- id: in_skip_unmapped
  doc: Print no output for a row with no mapped elements.
  type: boolean
  inputBinding:
    prefix: --skip-unmapped
- id: in_sweep_all
  doc: Ensure <map-file> is read completely (helps to prevent broken pipes).
  type: boolean
  inputBinding:
    prefix: --sweep-all
- id: in_unmapped_val
  doc: "Print <val> on unmapped --echo-map* and --min/max-element* operations.\nThe\
    \ default is to print nothing."
  type: long
  inputBinding:
    prefix: --unmapped-val
- id: in_exact
  doc: First 3 fields from <map-file> must be identical to <ref-file>'s.
  type: boolean
  inputBinding:
    prefix: --exact
- id: in_fraction_either
  doc: "Either --fraction-ref <val> or --fraction-map <val> must be true to\nqualify\
    \ as overlapping.  Expect 0 < val <= 1."
  type: long
  inputBinding:
    prefix: --fraction-either
- id: in_fraction_map
  doc: "The fraction of the element's size from <map-file> that must overlap\nthe\
    \ element in <ref-file>.  Expect 0 < val <= 1."
  type: long
  inputBinding:
    prefix: --fraction-map
- id: in_fraction_ref
  doc: "The fraction of the element's size from <ref-file> that must overlap\nan element\
    \ in <map-file>.  Expect 0 < val <= 1."
  type: long
  inputBinding:
    prefix: --fraction-ref
- id: in_cv
  doc: The result of --stdev divided by the result of --mean.
  type: boolean
  inputBinding:
    prefix: --cv
- id: in_kth
  doc: "Generalized median. Report the value, x, such that the fraction <val>\nof\
    \ overlapping elements' scores from <map-file> is less than x,\nand the fraction\
    \ 1-<val> of scores is greater than x.  0 < val <= 1."
  type: File
  inputBinding:
    prefix: --kth
- id: in_mad
  doc: "<mult=1>      The median absolute deviation of overlapping elements in <map-file>.\n\
    Multiply mad score by <mult>.  0 < mult, and mult is 1 by default."
  type: boolean
  inputBinding:
    prefix: --mad
- id: in_max
  doc: The highest score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --max
- id: in_max_element
  doc: A (non-random) highest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --max-element
- id: in_max_element_rand
  doc: A random highest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --max-element-rand
- id: in_mean
  doc: The average score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --mean
- id: in_median
  doc: The median score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --median
- id: in_min
  doc: The lowest score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --min
- id: in_min_element
  doc: A (non-random) lowest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --min-element
- id: in_min_element_rand
  doc: A random lowest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --min-element-rand
- id: in_stdev
  doc: The square root of the result of --variance.
  type: boolean
  inputBinding:
    prefix: --stdev
- id: in_sum
  doc: Accumulated scores from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --sum
- id: in_t_mean
  doc: "<hi>  The mean score from overlapping elements in <map-file>, after\nignoring\
    \ the bottom <low> and top <hi> fractions of those scores.\n0 <= low <= 1.  0\
    \ <= hi <= 1.  low+hi <= 1."
  type: File
  inputBinding:
    prefix: --tmean
- id: in_variance
  doc: The variance of scores from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --variance
- id: in_w_mean
  doc: "Weighted mean, scaled in proportion to the coverage of the <ref-file>\nelement\
    \ by each overlapping <map-file> element."
  type: boolean
  inputBinding:
    prefix: --wmean
- id: in_bases
  doc: The total number of overlapping bases from <map-file>.
  type: boolean
  inputBinding:
    prefix: --bases
- id: in_bases_uniq
  doc: "The number of distinct bases from <ref-file>'s element covered by\noverlapping\
    \ elements in <map-file>."
  type: boolean
  inputBinding:
    prefix: --bases-uniq
- id: in_bases_uniq_f
  doc: "The fraction of distinct bases from <ref-file>'s element covered by\noverlapping\
    \ elements in <map-file>."
  type: boolean
  inputBinding:
    prefix: --bases-uniq-f
- id: in_count
  doc: The number of overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --count
- id: in_echo
  doc: Print each line from <ref-file>.
  type: boolean
  inputBinding:
    prefix: --echo
- id: in_echo_map
  doc: List all overlapping elements from <map-file>.
  type: boolean
  inputBinding:
    prefix: --echo-map
- id: in_echo_map_id
  doc: List IDs from all overlapping <map-file> elements.
  type: boolean
  inputBinding:
    prefix: --echo-map-id
- id: in_echo_map_id_uniq
  doc: List unique IDs from overlapping <map-file> elements.
  type: boolean
  inputBinding:
    prefix: --echo-map-id-uniq
- id: in_echo_map_range
  doc: Print genomic range of overlapping elements from <map-file>.
  type: boolean
  inputBinding:
    prefix: --echo-map-range
- id: in_echo_map_score
  doc: List scores from overlapping <map-file> elements.
  type: boolean
  inputBinding:
    prefix: --echo-map-score
- id: in_echo_map_size
  doc: List the full length of every overlapping element.
  type: boolean
  inputBinding:
    prefix: --echo-map-size
- id: in_echo_overlap_size
  doc: lengths of overlaps.
  type: long
  inputBinding:
    prefix: --echo-overlap-size
- id: in_echo_ref_name
  doc: Print the first 3 fields of <ref-file> using chrom:start-end format.
  type: boolean
  inputBinding:
    prefix: --echo-ref-name
- id: in_echo_ref_row_id
  doc: Print 'id-' followed by the line number of <ref-file>.
  type: boolean
  inputBinding:
    prefix: --echo-ref-row-id
- id: in_echo_ref_size
  doc: Print the length of each line from <ref-file>.
  type: boolean
  inputBinding:
    prefix: --echo-ref-size
- id: in_indicator
  doc: Print 1 if there exists an overlapping element in <map-file>, 0 otherwise.
  type: boolean
  inputBinding:
    prefix: --indicator
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedmap-megarow
