class: CommandLineTool
id: pispino_createreadpairslist.cwl
inputs:
- id: i
  doc: '[REQUIRED] Directory with your raw sequences in gzipped FASTQ'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Name of output list file.
  type: File
  inputBinding:
    prefix: -o
- id: label_add_c_end
  doc: Add a label to the END of each sample ids in the output file. N.B. "_" is not
    allowed
  type: string
  inputBinding:
    prefix: --label-add-c-end
- id: label_add_c_front
  doc: Add a label to the FRONT of each sample ids in the output file. N.B. "_" is
    not allowed
  type: string
  inputBinding:
    prefix: --label-add-c-front
- id: label_re_index_c
  doc: Rename samples with the given label. It will automatically add 001, 002 etc.
    at the end of each name. N.B. "_" is not allowed
  type: string
  inputBinding:
    prefix: --label-reindex-c
- id: f
  doc: Ignore name clash and create a mapping file anyway.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- pispino_createreadpairslist
