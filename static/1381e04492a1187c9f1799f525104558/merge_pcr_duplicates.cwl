class: CommandLineTool
id: merge_pcr_duplicates.py_alignments.cwl
inputs:
- id: alignments
  doc: Path to bed6 file containing alignments.
  type: string
  inputBinding:
    position: 0
- id: bc_lib
  doc: Path to fastq barcode library.
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: Write results to this file.
  type: string
  inputBinding:
    prefix: --outfile
- id: verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Print lots of debugging information
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_pcr_duplicates.py
- alignments
