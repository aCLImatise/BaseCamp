class: CommandLineTool
id: clip_out_UMI_cellBC.py.cwl
inputs:
- id: in_umi_len
  doc: Length of UMI
  type: long
  inputBinding:
    prefix: --umi_len
- id: in_bc_len
  doc: Length of cell barcode
  type: long
  inputBinding:
    prefix: --bc_len
- id: in_tso_len
  doc: Length of TSO (for G5-10X only)
  type: long
  inputBinding:
    prefix: --tso_len
- id: in_umi_type
  doc: Location of the UMI
  type: string
  inputBinding:
    prefix: --umi_type
- id: in_g_five_clip_seq
  doc: Sequence before UMI for G5-clip (for G5-clip only)
  type: long
  inputBinding:
    prefix: --g5_clip_seq
- id: in_bc_rank_file
  doc: "(Optional) cell barcode rank file from short read data\n"
  type: File
  inputBinding:
    prefix: --bc_rank_file
- id: in_bam_filename
  doc: CCS BAM with cDNA primer removed (post LIMA)
  type: string
  inputBinding:
    position: 0
- id: in_output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clip_out_UMI_cellBC.py
