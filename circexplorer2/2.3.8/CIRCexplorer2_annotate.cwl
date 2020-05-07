class: CommandLineTool
id: CIRCexplorer2_annotate.cwl
inputs:
- id: ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: genome
  doc: Genome FASTA file.
  type: string
  inputBinding:
    prefix: --genome
- id: bed
  doc: Input file.
  type: string
  inputBinding:
    prefix: --bed
- id: output
  doc: 'Output file. [default: circularRNA_known.txt]'
  type: string
  inputBinding:
    prefix: --output
- id: no_fix
  doc: No-fix mode (useful for species with poor gene annotations).
  type: boolean
  inputBinding:
    prefix: --no-fix
- id: low_confidence
  doc: Extract low confidence circRNAs.
  type: boolean
  inputBinding:
    prefix: --low-confidence
outputs: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- annotate
