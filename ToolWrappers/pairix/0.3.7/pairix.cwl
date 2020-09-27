class: CommandLineTool
id: pairix.cwl
inputs:
- id: in_preset_pairs_mergednodups
  doc: 'preset: pairs, merged_nodups, old_merged_nodups, gff, bed, sam, vcf, psltbl
    [gff]'
  type: string
  inputBinding:
    prefix: -p
- id: in_sequence_name_column
  doc: sequence name column [1]
  type: long
  inputBinding:
    prefix: -s
- id: in_second_sequence_name
  doc: second sequence name column [null]
  type: long
  inputBinding:
    prefix: -d
- id: in_var_3
  doc: start1 column [4]
  type: long
  inputBinding:
    prefix: -b
- id: in_e
  doc: end1 column; can be identical to '-b' [5]
  type: long
  inputBinding:
    prefix: -e
- id: in_u
  doc: start2 column [null]
  type: long
  inputBinding:
    prefix: -u
- id: in_v
  doc: end2 column; can be identical to '-u' [null or identical to the start2 specified
    by -u]
  type: long
  inputBinding:
    prefix: -v
- id: in_delimiter_space_instead
  doc: delimiter is space instead of tab.
  type: boolean
  inputBinding:
    prefix: -T
- id: in_query_region_string
  doc: query region is not a string but a file listing query regions
  type: boolean
  inputBinding:
    prefix: -L
- id: in_skip_first_int
  doc: skip first INT lines [0]
  type: long
  inputBinding:
    prefix: -S
- id: in_symbol_commentmeta_lines
  doc: symbol for comment/meta lines [#]
  type: string
  inputBinding:
    prefix: -c
- id: in_symbol_query_region
  doc: symbol for query region separator [|]
  type: string
  inputBinding:
    prefix: -w
- id: in_replace_header_content
  doc: replace the header with the content of FILE [null]
  type: File
  inputBinding:
    prefix: -r
- id: in_zerobased_coordinate
  doc: zero-based coordinate
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_print_only_lines
  doc: print only the header lines
  type: boolean
  inputBinding:
    prefix: -H
- id: in_print_only_number
  doc: print only the number of bgzf blocks for existing chromosome (pairs)
  type: boolean
  inputBinding:
    prefix: -B
- id: in_print_only_region
  doc: print only the region split character
  type: boolean
  inputBinding:
    prefix: -W
- id: in_only_check_occurs
  doc: Only check if the file is a triangle (i.e. a chromosome pair occurs only in
    one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_list_chromosome_names
  doc: list chromosome names
  type: boolean
  inputBinding:
    prefix: -l
- id: in_print_only_count
  doc: print only the total line count (same as gunzip -c | wc -l but much faster)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_force_overwrite_index
  doc: force to overwrite the index
  type: boolean
  inputBinding:
    prefix: -f
- id: in_autoflip_query_exist
  doc: autoflip query when the matching chromosome pair doesn't exist
  type: boolean
  inputBinding:
    prefix: -a
- id: in_in_dot_pairs_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pairix
