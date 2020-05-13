class: CommandLineTool
id: CrossMap.py.cwl
inputs:
- id: gff
  doc: convert genome coordinate or annotation file in GFF or GTF format.
  type: string
  inputBinding:
    position: 0
- id: maf
  doc: convert genome coordinate file in MAF (mutation annotation format).
  type: string
  inputBinding:
    position: 1
- id: vcf
  doc: convert genome coordinate file in VCF format.
  type: string
  inputBinding:
    position: 2
- id: wig
  doc: convert genome coordinate file in Wiggle, or bedGraph format.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- CrossMap.py
