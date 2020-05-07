class: CommandLineTool
id: summarize_gmap_sam.py.cwl
inputs:
- id: input_fa_or_fq
  doc: Input fasta/fastq filename
  type: string
  inputBinding:
    position: 0
- id: sam_file
  doc: (GMAP) SAM filename
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_gmap_sam.py
