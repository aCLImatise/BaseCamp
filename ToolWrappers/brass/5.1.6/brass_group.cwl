class: CommandLineTool
id: brass_group.cwl
inputs:
- id: in_discard_read_pairs_groups
  doc: Discard read pairs or groups matching condition TYPE
  type: string?
  inputBinding:
    prefix: -d
- id: in_read_annotation_features
  doc: Read annotation features from FILE (in BED or range format)
  type: File?
  inputBinding:
    prefix: -F
- id: in_omit_groups_locations
  doc: Omit groups in or near the locations encompassed by RANGE
  type: string?
  inputBinding:
    prefix: -i
- id: in_locations_encompassed_ranges
  doc: locations encompassed by ranges listed in FILE
  type: string[]
  inputBinding:
    prefix: -I
- id: in_keep_read_pairs
  doc: Keep read pairs or groups matching condition TYPE
  type: string?
  inputBinding:
    prefix: -k
- id: in_use_maximum_size
  doc: Use maximum insert size NUM unless specified by the library
  type: long?
  inputBinding:
    prefix: -m
- id: in_omit_groups_containing
  doc: Omit groups containing fewer than NUM read pairs (default 2)
  type: long?
  inputBinding:
    prefix: -n
- id: in_write_rearrangement_groups
  doc: Write rearrangement groups to FILE rather than standard output
  type: File?
  inputBinding:
    prefix: -o
- id: in_discard_read_pairs_default
  doc: Discard read pairs with mapping quality less than NUM (default 1)
  type: long?
  inputBinding:
    prefix: -q
- id: in_use_sample_name
  doc: Use sample NAME for read pairs that are not in any read group
  type: string?
  inputBinding:
    prefix: -s
- id: in_insertion
  doc: Intrachromosomal insertions smaller than the insert (discarded)
  type: string
  inputBinding:
    position: 0
- id: in_repeat
  doc: Groups touching listed repeat features (discarded)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_rearrangement_groups
  doc: Write rearrangement groups to FILE rather than standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_write_rearrangement_groups)
hints: []
cwlVersion: v1.1
baseCommand:
- brass-group
