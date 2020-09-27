class: CommandLineTool
id: peak_pie.py.cwl
inputs:
- id: in_bed
  doc: BED file of e.g. peaks
  type: File
  inputBinding:
    prefix: --bed
- id: in_gff
  doc: GFF file of e.g. annotations
  type: File
  inputBinding:
    prefix: --gff
- id: in_out
  doc: Output PNG file
  type: File
  inputBinding:
    prefix: --out
- id: in_stranded
  doc: Use strand-specific intersections
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_include
  doc: "[INCLUDE [INCLUDE ...]]\nFeaturetypes to include"
  type: boolean
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "[EXCLUDE [EXCLUDE ...]]\nFeaturetypes to exclude"
  type: boolean
  inputBinding:
    prefix: --exclude
- id: in_thresh
  doc: Threshold percentage below which output will be
  type: string
  inputBinding:
    prefix: --thresh
- id: in_suppressed
  doc: --test                Run test, overwriting all other args. Result will be
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output PNG file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- peak_pie.py
