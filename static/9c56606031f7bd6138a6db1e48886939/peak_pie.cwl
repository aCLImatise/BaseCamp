class: CommandLineTool
id: peak_pie.py.cwl
inputs:
- id: bed
  doc: BED file of e.g. peaks
  type: string
  inputBinding:
    prefix: --bed
- id: gff
  doc: GFF file of e.g. annotations
  type: string
  inputBinding:
    prefix: --gff
- id: out
  doc: Output PNG file
  type: string
  inputBinding:
    prefix: --out
- id: stranded
  doc: Use strand-specific intersections
  type: boolean
  inputBinding:
    prefix: --stranded
- id: include
  doc: '[INCLUDE [INCLUDE ...]] Featuretypes to include'
  type: boolean
  inputBinding:
    prefix: --include
- id: exclude
  doc: '[EXCLUDE [EXCLUDE ...]] Featuretypes to exclude'
  type: boolean
  inputBinding:
    prefix: --exclude
- id: thresh
  doc: Threshold percentage below which output will be suppressed
  type: string
  inputBinding:
    prefix: --thresh
- id: test
  doc: Run test, overwriting all other args. Result will be "out.png" in current directory.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- peak_pie.py
