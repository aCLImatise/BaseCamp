class: CommandLineTool
id: parse_mappings.pl.cwl
inputs:
- id: in_discard_mappings_higher
  doc: Discard mappings of edit distance higher than this
  type: long?
  inputBinding:
    prefix: -a
- id: in_discard_mappings_read
  doc: Discard mappings of read queries shorter than this
  type: long?
  inputBinding:
    prefix: -b
- id: in_discard_mappings_longer
  doc: Discard mappings of read queries longer than this
  type: long?
  inputBinding:
    prefix: -c
- id: in_discard_read_queries_not_file
  doc: Discard read queries not in this file
  type: File?
  inputBinding:
    prefix: -d
- id: in_discard_read_queries_in_file
  doc: Discard read queries in this file
  type: File?
  inputBinding:
    prefix: -e
- id: in_discard_reference_dbs_not_file
  doc: Discard reference dbs not in this file
  type: File?
  inputBinding:
    prefix: -f
- id: in_discard_reference_dbs_in_file
  doc: Discard reference dbs in this file
  type: File?
  inputBinding:
    prefix: -g
- id: in_discard_remaining_mappings
  doc: "Discard remaining suboptimal mappings and discard any\nreads that have more\
    \ remaining mappings than this"
  type: long?
  inputBinding:
    prefix: -i
- id: in_remove_unmatched_nts
  doc: Remove any unmatched nts in the very 3' end
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_output_progress_standard
  doc: Output progress to standard output
  type: boolean?
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- parse_mappings.pl
