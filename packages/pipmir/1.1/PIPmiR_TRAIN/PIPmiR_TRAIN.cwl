class: CommandLineTool
id: PIPmiR_TRAIN.cwl
inputs:
- id: in_p
  doc: File of putative miRNA precursor sequences and their fold structure (see README)
  type: File
  inputBinding:
    prefix: -P
- id: in_k
  doc: File of putative miRNA precursor sequences and their fold structure (see README)
  type: File
  inputBinding:
    prefix: -K
- id: in_sorted_file_containing
  doc: .bam Sorted .bam file containing alignment of the read data
  type: File
  inputBinding:
    prefix: -a
- id: in_file_write_data
  doc: File to write classifier training data (do not include filepath, new file will
    be generated in ./src/)
  type: File
  inputBinding:
    prefix: -T
- id: in_minimum_read_count
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: long
  inputBinding:
    prefix: -m
- id: in_maximum_amount_memory
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_data
  doc: File to write classifier training data (do not include filepath, new file will
    be generated in ./src/)
  type: File
  outputBinding:
    glob: $(inputs.in_file_write_data)
cwlVersion: v1.1
baseCommand:
- PIPmiR
- TRAIN
