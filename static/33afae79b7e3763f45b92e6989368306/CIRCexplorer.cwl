class: CommandLineTool
id: CIRCexplorer.py.cwl
inputs:
- id: fusion
  doc: TopHat-Fusion fusion BAM file. (used in TopHat-Fusion mapping)
  type: string
  inputBinding:
    prefix: --fusion
- id: jun_c
  doc: STAR Chimeric junction file. (used in STAR mapping)
  type: string
  inputBinding:
    prefix: --junc
- id: genome
  doc: Genome FASTA file.
  type: string
  inputBinding:
    prefix: --genome
- id: ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: output
  doc: 'Output prefix [default: CIRCexplorer].'
  type: string
  inputBinding:
    prefix: --output
- id: tmp
  doc: Keep temporary files.
  type: boolean
  inputBinding:
    prefix: --tmp
- id: no_fix
  doc: No-fix mode (useful for species with poor gene annotations)
  type: boolean
  inputBinding:
    prefix: --no-fix
outputs: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer.py
