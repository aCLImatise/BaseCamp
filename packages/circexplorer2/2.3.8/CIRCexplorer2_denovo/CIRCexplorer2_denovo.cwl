class: CommandLineTool
id: CIRCexplorer2_denovo.cwl
inputs:
- id: in_ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: in_as
  doc: Detect alternative splicing and output.
  type: string
  inputBinding:
    prefix: --as
- id: in_as_type
  doc: Only check certain type (CE/RI/ASS) of AS events.
  type: string
  inputBinding:
    prefix: --as-type
- id: in_abs
  doc: Detect alternative back-splicing and output.
  type: string
  inputBinding:
    prefix: --abs
- id: in_bed
  doc: Input file.
  type: File
  inputBinding:
    prefix: --bed
- id: in_cuff
  doc: "assemble folder output by CIRCexplorer2 assemble. [default: '']"
  type: Directory
  inputBinding:
    prefix: --cuff
- id: in_top_hat
  doc: TopHat mapping folder.
  type: Directory
  inputBinding:
    prefix: --tophat
- id: in_pa_plus
  doc: TopHat mapping directory for p(A)+ RNA-seq.
  type: Directory
  inputBinding:
    prefix: --pAplus
- id: in_output
  doc: 'Output Folder. [default: denovo]'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_genome
  doc: Genome FASTA file.
  type: File
  inputBinding:
    prefix: --genome
- id: in_no_fix
  doc: No-fix mode (useful for species with poor gene annotations).
  type: boolean
  inputBinding:
    prefix: --no-fix
- id: in_rp_km
  doc: Calculate RPKM for cassette exons.
  type: boolean
  inputBinding:
    prefix: --rpkm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cuff
  doc: "assemble folder output by CIRCexplorer2 assemble. [default: '']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_cuff)
- id: out_output
  doc: 'Output Folder. [default: denovo]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- denovo
