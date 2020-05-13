class: CommandLineTool
id: igdiscover_count.cwl
inputs:
- id: gene
  doc: 'Which gene type: Choose V, D or J. Default: Default: V'
  type: string
  inputBinding:
    prefix: --gene
- id: database
  doc: Compute expressions for the sequences that are named in the FASTA file. Only
    the sequence names in the file are used! This is the only way to also include
    genes with an expression of zero.
  type: string
  inputBinding:
    prefix: --database
- id: plot
  doc: Plot expressions to FILE (PDF or PNG)
  type: File
  inputBinding:
    prefix: --plot
- id: d_evalue
  doc: 'Maximal allowed E-value for D gene match. Default: 1E-4 if --gene=D, no restriction
    otherwise.'
  type: string
  inputBinding:
    prefix: --d-evalue
- id: d_coverage
  doc: 'Minimum D coverage (in percent). Default: 70 if --gene=D, no restriction otherwise.'
  type: string
  inputBinding:
    prefix: --d-coverage
- id: d_errors
  doc: 'Maximum allowed D errors. Default: No limit.'
  type: string
  inputBinding:
    prefix: --d-errors
- id: allele_ratio
  doc: 'Required allele ratio. Works only for genes named "NAME*ALLELE". Default:
    Do not check allele ratio.'
  type: string
  inputBinding:
    prefix: --allele-ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- count
