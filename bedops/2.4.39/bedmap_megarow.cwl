class: CommandLineTool
id: bedmap_megarow.cwl
inputs:
- id: chrom
  doc: 'Jump to and process data for given <chromosome> only.                   '
  type: string
  inputBinding:
    prefix: --chrom
- id: delim
  doc: Change output delimiter from '|' to <delim> between columns (e.g. '\t').
  type: string
  inputBinding:
    prefix: --delim
- id: ec
  doc: 'Error check all input files (slower).                                   '
  type: boolean
  inputBinding:
    prefix: --ec
- id: faster
  doc: '(advanced) Strong input assumptions are made.  Compatible with:          --bp-ovr,
    --range, --fraction-both, and --exact overlap options only. '
  type: boolean
  inputBinding:
    prefix: --faster
- id: header
  doc: 'Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.             '
  type: boolean
  inputBinding:
    prefix: --header
- id: min_memory
  doc: 'Minimize memory usage (slower).                                         '
  type: boolean
  inputBinding:
    prefix: --min-memory
- id: multi_delim
  doc: "Change delimiter of multi-value output columns from ';' to <delim>.     "
  type: string
  inputBinding:
    prefix: --multidelim
- id: prec
  doc: 'Change the post-decimal precision of scores to <int>.  0 <= <int>.      '
  type: long
  inputBinding:
    prefix: --prec
- id: sci
  doc: 'Use scientific notation for score outputs.                              '
  type: boolean
  inputBinding:
    prefix: --sci
- id: skip_unmapped
  doc: 'Print no output for a row with no mapped elements.                      '
  type: boolean
  inputBinding:
    prefix: --skip-unmapped
- id: sweep_all
  doc: 'Ensure <map-file> is read completely (helps to prevent broken pipes).   '
  type: boolean
  inputBinding:
    prefix: --sweep-all
- id: unmapped_val
  doc: 'Print <val> on unmapped --echo-map* and --min/max-element* operations.   The
    default is to print nothing.                                      '
  type: string
  inputBinding:
    prefix: --unmapped-val
- id: bp_ovr
  doc: 'Require <int> bp overlap between elements of input files.            '
  type: long
  inputBinding:
    prefix: --bp-ovr
- id: exact
  doc: "First 3 fields from <map-file> must be identical to <ref-file>'s.    "
  type: boolean
  inputBinding:
    prefix: --exact
- id: fraction_both
  doc: 'Both --fraction-ref <val> and --fraction-map <val> must be true to    qualify
    as overlapping.  Expect 0 < val <= 1.                      '
  type: string
  inputBinding:
    prefix: --fraction-both
- id: fraction_either
  doc: 'Either --fraction-ref <val> or --fraction-map <val> must be true to   qualify
    as overlapping.  Expect 0 < val <= 1.                      '
  type: string
  inputBinding:
    prefix: --fraction-either
- id: fraction_map
  doc: "The fraction of the element's size from <map-file> that must overlap  the\
    \ element in <ref-file>.  Expect 0 < val <= 1.                   "
  type: string
  inputBinding:
    prefix: --fraction-map
- id: fraction_ref
  doc: "The fraction of the element's size from <ref-file> that must overlap  an element\
    \ in <map-file>.  Expect 0 < val <= 1.                    "
  type: string
  inputBinding:
    prefix: --fraction-ref
- id: range
  doc: "Grab <map-file> elements within <int> bp of <ref-file>'s element,     where\
    \ 0 <= int.  --range 0 is an alias for --bp-ovr 1.             "
  type: long
  inputBinding:
    prefix: --range
- id: cv
  doc: The result of --stdev divided by the result of --mean.
  type: boolean
  inputBinding:
    prefix: --cv
- id: kth
  doc: Generalized median. Report the value, x, such that the fraction <val> of overlapping
    elements' scores from <map-file> is less than x, and the fraction 1-<val> of scores
    is greater than x.  0 < val <= 1.
  type: string
  inputBinding:
    prefix: --kth
- id: mad
  doc: <mult=1>      The median absolute deviation of overlapping elements in <map-file>.
    Multiply mad score by <mult>.  0 < mult, and mult is 1 by default.
  type: boolean
  inputBinding:
    prefix: --mad
- id: max
  doc: The highest score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --max
- id: max_element
  doc: A (non-random) highest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --max-element
- id: max_element_rand
  doc: A random highest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --max-element-rand
- id: mean
  doc: The average score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --mean
- id: median
  doc: The median score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --median
- id: min
  doc: The lowest score from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --min
- id: min_element
  doc: A (non-random) lowest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --min-element
- id: min_element_rand
  doc: A random lowest-scoring and overlapping element in <map-file>.
  type: boolean
  inputBinding:
    prefix: --min-element-rand
- id: stdev
  doc: The square root of the result of --variance.
  type: boolean
  inputBinding:
    prefix: --stdev
- id: sum
  doc: Accumulated scores from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --sum
- id: t_mean
  doc: <hi>  The mean score from overlapping elements in <map-file>, after ignoring
    the bottom <low> and top <hi> fractions of those scores. 0 <= low <= 1.  0 <=
    hi <= 1.  low+hi <= 1.
  type: string
  inputBinding:
    prefix: --tmean
- id: variance
  doc: The variance of scores from overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --variance
- id: w_mean
  doc: Weighted mean, scaled in proportion to the coverage of the <ref-file> element
    by each overlapping <map-file> element.
  type: boolean
  inputBinding:
    prefix: --wmean
- id: bases
  doc: The total number of overlapping bases from <map-file>.
  type: boolean
  inputBinding:
    prefix: --bases
- id: bases_uniq
  doc: The number of distinct bases from <ref-file>'s element covered by overlapping
    elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --bases-uniq
- id: bases_uniq_f
  doc: The fraction of distinct bases from <ref-file>'s element covered by overlapping
    elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --bases-uniq-f
- id: count
  doc: The number of overlapping elements in <map-file>.
  type: boolean
  inputBinding:
    prefix: --count
- id: echo
  doc: Print each line from <ref-file>.
  type: boolean
  inputBinding:
    prefix: --echo
- id: echo_map
  doc: List all overlapping elements from <map-file>.
  type: boolean
  inputBinding:
    prefix: --echo-map
- id: echo_map_id
  doc: List IDs from all overlapping <map-file> elements.
  type: boolean
  inputBinding:
    prefix: --echo-map-id
- id: echo_map_id_uniq
  doc: List unique IDs from overlapping <map-file> elements.
  type: boolean
  inputBinding:
    prefix: --echo-map-id-uniq
- id: echo_map_range
  doc: Print genomic range of overlapping elements from <map-file>.
  type: boolean
  inputBinding:
    prefix: --echo-map-range
- id: echo_map_score
  doc: List scores from overlapping <map-file> elements.
  type: boolean
  inputBinding:
    prefix: --echo-map-score
- id: echo_map_size
  doc: List the full length of every overlapping element.
  type: boolean
  inputBinding:
    prefix: --echo-map-size
- id: echo_overlap_size
  doc: lengths of overlaps.
  type: string
  inputBinding:
    prefix: --echo-overlap-size
- id: echo_ref_name
  doc: Print the first 3 fields of <ref-file> using chrom:start-end format.
  type: boolean
  inputBinding:
    prefix: --echo-ref-name
- id: echo_ref_row_id
  doc: Print 'id-' followed by the line number of <ref-file>.
  type: boolean
  inputBinding:
    prefix: --echo-ref-row-id
- id: echo_ref_size
  doc: Print the length of each line from <ref-file>.
  type: boolean
  inputBinding:
    prefix: --echo-ref-size
- id: indicator
  doc: Print 1 if there exists an overlapping element in <map-file>, 0 otherwise.
  type: boolean
  inputBinding:
    prefix: --indicator
outputs: []
cwlVersion: v1.1
baseCommand:
- bedmap-megarow
