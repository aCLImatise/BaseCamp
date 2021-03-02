class: CommandLineTool
id: process_merged_nodup.sh.cwl
inputs:
- id: in_ignore_leading_blanks
  doc: Ignore leading blanks
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_check_input_sorted
  doc: Check whether input is sorted
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_dictionary_order_blank
  doc: Dictionary order (blank or alphanumeric only)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_ignore_case
  doc: Ignore case
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_general_numerical_sort
  doc: General numerical sort
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_ignore_unprintable_characters
  doc: Ignore unprintable characters
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_sort_key
  doc: Sort key
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_sort_month
  doc: Sort month
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_sort_numbers
  doc: Sort numbers
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_output_to_file
  doc: Output to file
  type: File?
  inputBinding:
    prefix: -o
- id: in_key_separator
  doc: Key separator
  type: string?
  inputBinding:
    prefix: -t
- id: in_reverse_sort_order
  doc: Reverse sort order
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_stable_sort_ties
  doc: Stable (don't sort ties alphabetically)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_suppress_duplicate_lines
  doc: Suppress duplicate lines
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_lines_terminated_newline
  doc: Lines are terminated by NUL, not newline
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_mst
  doc: Ignored for GNU compatibility
  type: boolean?
  inputBinding:
    prefix: -mST
- id: in_preset_pairs_mergednodups
  doc: 'preset: pairs, merged_nodups, old_merged_nodups, gff, bed, sam, vcf, psltbl
    [gff]'
  type: string?
  inputBinding:
    prefix: -p
- id: in_e
  doc: end1 column; can be identical to '-b' [5]
  type: long?
  inputBinding:
    prefix: -e
- id: in_v
  doc: end2 column; can be identical to '-u' [null or identical to the start2 specified
    by -u]
  type: long?
  inputBinding:
    prefix: -v
- id: in_delimiter_space_instead
  doc: delimiter is space instead of tab.
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_query_region_string
  doc: query region is not a string but a file listing query regions
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_skip_first_lines
  doc: skip first INT lines [0]
  type: long?
  inputBinding:
    prefix: -S
- id: in_symbol_query_region
  doc: symbol for query region separator [|]
  type: string?
  inputBinding:
    prefix: -w
- id: in_zerobased_coordinate
  doc: zero-based coordinate
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_print_only_lines
  doc: print only the header lines
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_print_only_number
  doc: print only the number of bgzf blocks for existing chromosome (pairs)
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_print_only_region
  doc: print only the region split character
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_only_check_occurs
  doc: Only check if the file is a triangle (i.e. a chromosome pair occurs only in
    one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_list_chromosome_names
  doc: list chromosome names
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_autoflip_query_pair
  doc: autoflip query when the matching chromosome pair doesn't exist
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_nrugmcszbdfimstokt
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nrugMcszbdfimSTokt
- id: in_pair_ix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_pairs_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_to_file
  doc: Output to file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_to_file)
hints: []
cwlVersion: v1.1
baseCommand:
- process_merged_nodup.sh
