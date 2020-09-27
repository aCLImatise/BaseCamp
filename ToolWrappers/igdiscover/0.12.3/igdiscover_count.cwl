class: CommandLineTool
id: igdiscover_count.cwl
inputs:
- id: in_gene
  doc: 'Which gene type: Choose V, D or J. Default: Default: V'
  type: string
  inputBinding:
    prefix: --gene
- id: in_database
  doc: "Compute expressions for the sequences that are named\nin the FASTA file. Only\
    \ the sequence names in the file\nare used! This is the only way to also include\
    \ genes\nwith an expression of zero."
  type: File
  inputBinding:
    prefix: --database
- id: in_plot
  doc: Plot expressions to FILE (PDF or PNG)
  type: File
  inputBinding:
    prefix: --plot
- id: in_d_evalue
  doc: "Maximal allowed E-value for D gene match. Default:\n1E-4 if --gene=D, no restriction\
    \ otherwise."
  type: double
  inputBinding:
    prefix: --d-evalue
- id: in_d_coverage
  doc: "Minimum D coverage (in percent). Default: 70 if\n--gene=D, no restriction\
    \ otherwise."
  type: long
  inputBinding:
    prefix: --d-coverage
- id: in_d_errors
  doc: 'Maximum allowed D errors. Default: No limit.'
  type: string
  inputBinding:
    prefix: --d-errors
- id: in_allele_ratio
  doc: "Required allele ratio. Works only for genes named\n\"NAME*ALLELE\". Default:\
    \ Do not check allele ratio.\n"
  type: string
  inputBinding:
    prefix: --allele-ratio
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- count
