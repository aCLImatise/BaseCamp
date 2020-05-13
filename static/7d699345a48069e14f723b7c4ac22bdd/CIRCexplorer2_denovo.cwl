class: CommandLineTool
id: CIRCexplorer2_denovo.cwl
inputs:
- id: ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: as
  doc: Detect alternative splicing and output.
  type: string
  inputBinding:
    prefix: --as
- id: as_type
  doc: Only check certain type (CE/RI/ASS) of AS events.
  type: string
  inputBinding:
    prefix: --as-type
- id: abs
  doc: Detect alternative back-splicing and output.
  type: string
  inputBinding:
    prefix: --abs
- id: bed
  doc: Input file.
  type: string
  inputBinding:
    prefix: --bed
- id: cuff
  doc: "assemble folder output by CIRCexplorer2 assemble. [default: '']"
  type: string
  inputBinding:
    prefix: --cuff
- id: top_hat
  doc: TopHat mapping folder.
  type: string
  inputBinding:
    prefix: --tophat
- id: pa_plus
  doc: TopHat mapping directory for p(A)+ RNA-seq.
  type: string
  inputBinding:
    prefix: --pAplus
- id: output
  doc: 'Output Folder. [default: denovo]'
  type: string
  inputBinding:
    prefix: --output
- id: genome
  doc: Genome FASTA file.
  type: string
  inputBinding:
    prefix: --genome
- id: no_fix
  doc: No-fix mode (useful for species with poor gene annotations).
  type: boolean
  inputBinding:
    prefix: --no-fix
- id: rp_km
  doc: Calculate RPKM for cassette exons.
  type: boolean
  inputBinding:
    prefix: --rpkm
outputs: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- denovo
