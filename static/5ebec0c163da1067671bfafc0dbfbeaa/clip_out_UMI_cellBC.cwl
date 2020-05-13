class: CommandLineTool
id: clip_out_UMI_cellBC.py.cwl
inputs:
- id: bam_filename
  doc: CCS BAM with cDNA primer removed (post LIMA)
  type: string
  inputBinding:
    position: 0
- id: output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    position: 1
- id: umi_len
  doc: Length of UMI
  type: string
  inputBinding:
    prefix: --umi_len
- id: bc_len
  doc: Length of cell barcode
  type: string
  inputBinding:
    prefix: --bc_len
- id: tso_len
  doc: Length of TSO (for G5-10X only)
  type: string
  inputBinding:
    prefix: --tso_len
- id: umi_type
  doc: Location of the UMI
  type: string
  inputBinding:
    prefix: --umi_type
- id: g5_clip_seq
  doc: Sequence before UMI for G5-clip (for G5-clip only)
  type: string
  inputBinding:
    prefix: --g5_clip_seq
- id: bc_rank_file
  doc: (Optional) cell barcode rank file from short read data
  type: string
  inputBinding:
    prefix: --bc_rank_file
outputs: []
cwlVersion: v1.1
baseCommand:
- clip_out_UMI_cellBC.py
