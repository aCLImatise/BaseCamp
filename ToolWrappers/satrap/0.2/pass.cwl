class: CommandLineTool
id: pass.cwl
inputs:
- id: in_check_block
  doc: \
  type: long?
  inputBinding:
    prefix: -check_block
- id: in_seed_step
  doc: \
  type: long?
  inputBinding:
    prefix: -seed_step
- id: in_fid
  doc: '[-phred64] > results.sam \'
  type: long?
  inputBinding:
    prefix: -fid
- id: in_range
  doc: 600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \
  type: long?
  inputBinding:
    prefix: -range
- id: in_tags
  doc: /1 /2 > paired_alignments.sam
  type: boolean?
  inputBinding:
    prefix: -tags
- id: in_lib_type
  doc: F3  > paired_alignments.sam
  type: long?
  inputBinding:
    prefix: -lib_type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pass
