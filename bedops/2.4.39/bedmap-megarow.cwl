#!/usr/bin/env cwl-runner

baseCommand:
- bedmap-megarow
class: CommandLineTool
cwlVersion: v1.0
id: bedmap-megarow
inputs:
- doc: 'Jump to and process data for given <chromosome> only.                   '
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: Change output delimiter from '|' to <delim> between columns (e.g. '\t').
  id: delim
  inputBinding:
    prefix: --delim
  type: string
- doc: 'Error check all input files (slower).                                   '
  id: ec
  inputBinding:
    prefix: --ec
  type: boolean
- doc: '(advanced) Strong input assumptions are made.  Compatible with:          --bp-ovr,
    --range, --fraction-both, and --exact overlap options only. '
  id: faster
  inputBinding:
    prefix: --faster
  type: boolean
- doc: 'Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.             '
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: 'Minimize memory usage (slower).                                         '
  id: min_memory
  inputBinding:
    prefix: --min-memory
  type: boolean
- doc: "Change delimiter of multi-value output columns from ';' to <delim>.     "
  id: multi_delim
  inputBinding:
    prefix: --multidelim
  type: string
- doc: 'Change the post-decimal precision of scores to <int>.  0 <= <int>.      '
  id: prec
  inputBinding:
    prefix: --prec
  type: long
- doc: 'Use scientific notation for score outputs.                              '
  id: sci
  inputBinding:
    prefix: --sci
  type: boolean
- doc: 'Print no output for a row with no mapped elements.                      '
  id: skip_unmapped
  inputBinding:
    prefix: --skip-unmapped
  type: boolean
- doc: 'Ensure <map-file> is read completely (helps to prevent broken pipes).   '
  id: sweep_all
  inputBinding:
    prefix: --sweep-all
  type: boolean
- doc: 'Print <val> on unmapped --echo-map* and --min/max-element* operations.   The
    default is to print nothing.                                      '
  id: unmapped_val
  inputBinding:
    prefix: --unmapped-val
  type: string
- doc: 'Require <int> bp overlap between elements of input files.            '
  id: bp_ovr
  inputBinding:
    prefix: --bp-ovr
  type: long
- doc: "First 3 fields from <map-file> must be identical to <ref-file>'s.    "
  id: exact
  inputBinding:
    prefix: --exact
  type: boolean
- doc: 'Both --fraction-ref <val> and --fraction-map <val> must be true to    qualify
    as overlapping.  Expect 0 < val <= 1.                      '
  id: fraction_both
  inputBinding:
    prefix: --fraction-both
  type: string
- doc: 'Either --fraction-ref <val> or --fraction-map <val> must be true to   qualify
    as overlapping.  Expect 0 < val <= 1.                      '
  id: fraction_either
  inputBinding:
    prefix: --fraction-either
  type: string
- doc: "The fraction of the element's size from <map-file> that must overlap  the\
    \ element in <ref-file>.  Expect 0 < val <= 1.                   "
  id: fraction_map
  inputBinding:
    prefix: --fraction-map
  type: string
- doc: "The fraction of the element's size from <ref-file> that must overlap  an element\
    \ in <map-file>.  Expect 0 < val <= 1.                    "
  id: fraction_ref
  inputBinding:
    prefix: --fraction-ref
  type: string
- doc: "Grab <map-file> elements within <int> bp of <ref-file>'s element,     where\
    \ 0 <= int.  --range 0 is an alias for --bp-ovr 1.             "
  id: range
  inputBinding:
    prefix: --range
  type: long
- doc: The result of --stdev divided by the result of --mean.
  id: cv
  inputBinding:
    prefix: --cv
  type: boolean
- doc: Generalized median. Report the value, x, such that the fraction <val> of overlapping
    elements' scores from <map-file> is less than x, and the fraction 1-<val> of scores
    is greater than x.  0 < val <= 1.
  id: kth
  inputBinding:
    prefix: --kth
  type: string
- doc: <mult=1>      The median absolute deviation of overlapping elements in <map-file>.
    Multiply mad score by <mult>.  0 < mult, and mult is 1 by default.
  id: mad
  inputBinding:
    prefix: --mad
  type: boolean
- doc: The highest score from overlapping elements in <map-file>.
  id: max
  inputBinding:
    prefix: --max
  type: boolean
- doc: A (non-random) highest-scoring and overlapping element in <map-file>.
  id: max_element
  inputBinding:
    prefix: --max-element
  type: boolean
- doc: A random highest-scoring and overlapping element in <map-file>.
  id: max_element_rand
  inputBinding:
    prefix: --max-element-rand
  type: boolean
- doc: The average score from overlapping elements in <map-file>.
  id: mean
  inputBinding:
    prefix: --mean
  type: boolean
- doc: The median score from overlapping elements in <map-file>.
  id: median
  inputBinding:
    prefix: --median
  type: boolean
- doc: The lowest score from overlapping elements in <map-file>.
  id: min
  inputBinding:
    prefix: --min
  type: boolean
- doc: A (non-random) lowest-scoring and overlapping element in <map-file>.
  id: min_element
  inputBinding:
    prefix: --min-element
  type: boolean
- doc: A random lowest-scoring and overlapping element in <map-file>.
  id: min_element_rand
  inputBinding:
    prefix: --min-element-rand
  type: boolean
- doc: The square root of the result of --variance.
  id: stdev
  inputBinding:
    prefix: --stdev
  type: boolean
- doc: Accumulated scores from overlapping elements in <map-file>.
  id: sum
  inputBinding:
    prefix: --sum
  type: boolean
- doc: <hi>  The mean score from overlapping elements in <map-file>, after ignoring
    the bottom <low> and top <hi> fractions of those scores. 0 <= low <= 1.  0 <=
    hi <= 1.  low+hi <= 1.
  id: t_mean
  inputBinding:
    prefix: --tmean
  type: string
- doc: The variance of scores from overlapping elements in <map-file>.
  id: variance
  inputBinding:
    prefix: --variance
  type: boolean
- doc: Weighted mean, scaled in proportion to the coverage of the <ref-file> element
    by each overlapping <map-file> element.
  id: w_mean
  inputBinding:
    prefix: --wmean
  type: boolean
- doc: The total number of overlapping bases from <map-file>.
  id: bases
  inputBinding:
    prefix: --bases
  type: boolean
- doc: The number of distinct bases from <ref-file>'s element covered by overlapping
    elements in <map-file>.
  id: bases_uniq
  inputBinding:
    prefix: --bases-uniq
  type: boolean
- doc: The fraction of distinct bases from <ref-file>'s element covered by overlapping
    elements in <map-file>.
  id: bases_uniq_f
  inputBinding:
    prefix: --bases-uniq-f
  type: boolean
- doc: The number of overlapping elements in <map-file>.
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: Print each line from <ref-file>.
  id: echo
  inputBinding:
    prefix: --echo
  type: boolean
- doc: List all overlapping elements from <map-file>.
  id: echo_map
  inputBinding:
    prefix: --echo-map
  type: boolean
- doc: List IDs from all overlapping <map-file> elements.
  id: echo_map_id
  inputBinding:
    prefix: --echo-map-id
  type: boolean
- doc: List unique IDs from overlapping <map-file> elements.
  id: echo_map_id_uniq
  inputBinding:
    prefix: --echo-map-id-uniq
  type: boolean
- doc: Print genomic range of overlapping elements from <map-file>.
  id: echo_map_range
  inputBinding:
    prefix: --echo-map-range
  type: boolean
- doc: List scores from overlapping <map-file> elements.
  id: echo_map_score
  inputBinding:
    prefix: --echo-map-score
  type: boolean
- doc: List the full length of every overlapping element.
  id: echo_map_size
  inputBinding:
    prefix: --echo-map-size
  type: boolean
- doc: lengths of overlaps.
  id: echo_overlap_size
  inputBinding:
    prefix: --echo-overlap-size
  type: string
- doc: Print the first 3 fields of <ref-file> using chrom:start-end format.
  id: echo_ref_name
  inputBinding:
    prefix: --echo-ref-name
  type: boolean
- doc: Print 'id-' followed by the line number of <ref-file>.
  id: echo_ref_row_id
  inputBinding:
    prefix: --echo-ref-row-id
  type: boolean
- doc: Print the length of each line from <ref-file>.
  id: echo_ref_size
  inputBinding:
    prefix: --echo-ref-size
  type: boolean
- doc: Print 1 if there exists an overlapping element in <map-file>, 0 otherwise.
  id: indicator
  inputBinding:
    prefix: --indicator
  type: boolean
