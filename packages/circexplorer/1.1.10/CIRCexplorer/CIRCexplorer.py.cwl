class: CommandLineTool
id: CIRCexplorer.py.cwl
inputs:
- id: in_fusion
  doc: TopHat-Fusion fusion BAM file. (used in TopHat-Fusion mapping)
  type: File
  inputBinding:
    prefix: --fusion
- id: in_jun_c
  doc: STAR Chimeric junction file. (used in STAR mapping)
  type: File
  inputBinding:
    prefix: --junc
- id: in_genome
  doc: Genome FASTA file.
  type: File
  inputBinding:
    prefix: --genome
- id: in_ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: in_output
  doc: 'Output prefix [default: CIRCexplorer].'
  type: string
  inputBinding:
    prefix: --output
- id: in_tmp
  doc: Keep temporary files.
  type: boolean
  inputBinding:
    prefix: --tmp
- id: in_no_fix
  doc: No-fix mode (useful for species with poor gene annotations)
  type: boolean
  inputBinding:
    prefix: --no-fix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CIRCexplorer.py
