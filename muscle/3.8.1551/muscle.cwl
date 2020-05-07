class: CommandLineTool
id: muscle.cwl
inputs:
- id: in
  doc: Input file in FASTA format (default stdin)
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: Output alignment in FASTA format (default stdout)
  type: string
  inputBinding:
    prefix: -out
- id: diags
  doc: Find diagonals (faster for similar sequences)
  type: boolean
  inputBinding:
    prefix: -diags
- id: maxiter_s
  doc: Maximum number of iterations (integer, default 16)
  type: string
  inputBinding:
    prefix: -maxiters
- id: max_hours
  doc: Maximum time to iterate in hours (default no limit)
  type: string
  inputBinding:
    prefix: -maxhours
- id: html
  doc: Write output in HTML format (default FASTA)
  type: boolean
  inputBinding:
    prefix: -html
- id: msf
  doc: Write output in GCG MSF format (default FASTA)
  type: boolean
  inputBinding:
    prefix: -msf
- id: clw
  doc: Write output in CLUSTALW format (default FASTA)
  type: boolean
  inputBinding:
    prefix: -clw
- id: cl_wstrict
  doc: As -clw, with 'CLUSTAL W (1.81)' header
  type: boolean
  inputBinding:
    prefix: -clwstrict
- id: log
  doc: '[a] <logfile>  Log to file (append if -loga, overwrite if -log)'
  type: boolean
  inputBinding:
    prefix: -log
- id: quiet
  doc: Do not write progress messages to stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: version
  doc: Display version information and exit
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- muscle
