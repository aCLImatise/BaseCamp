class: CommandLineTool
id: demux_by_barcode_for_subsampling.py.cwl
inputs:
- id: class_filename
  doc: SQANTI classification file
  type: string
  inputBinding:
    position: 0
- id: fast_a_filename
  doc: FASTA filename
  type: string
  inputBinding:
    position: 1
- id: demux_count_file
  doc: Demux count file
  type: string
  inputBinding:
    position: 2
- id: output_prefix
  doc: Output prefix for GFF outputs
  type: string
  inputBinding:
    position: 3
- id: out_group_dict
  doc: Tuples indicating barcode grouping
  type: string
  inputBinding:
    position: 4
- id: ignore_novel
  doc: 'Ignore novel genes/transcripts (default: off)'
  type: boolean
  inputBinding:
    prefix: --ignore_novel
outputs: []
cwlVersion: v1.1
baseCommand:
- demux_by_barcode_for_subsampling.py
