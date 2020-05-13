class: CommandLineTool
id: demux_by_barcode_groups.py.cwl
inputs:
- id: pooled_gff
  doc: Pooled GFF file
  type: string
  inputBinding:
    position: 0
- id: demux_count_file
  doc: Demux count file
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: Output prefix for GFF outputs
  type: string
  inputBinding:
    position: 2
- id: out_group_dict
  doc: Tuples indicating barcode grouping
  type: string
  inputBinding:
    position: 3
- id: pooled_fast_x
  doc: Pooled FASTA/FASTQ (optional, if given, will also output demux fa/fq)
  type: string
  inputBinding:
    prefix: --pooled_fastx
outputs: []
cwlVersion: v1.1
baseCommand:
- demux_by_barcode_groups.py
