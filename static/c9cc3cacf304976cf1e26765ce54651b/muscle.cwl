class: CommandLineTool
id: muscle.cwl
inputs:
- id: in_in
  doc: Input file in FASTA format (default stdin)
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output alignment in FASTA format (default stdout)
  type: File?
  inputBinding:
    prefix: -out
- id: in_diags
  doc: Find diagonals (faster for similar sequences)
  type: boolean?
  inputBinding:
    prefix: -diags
- id: in_maxiter_s
  doc: Maximum number of iterations (integer, default 16)
  type: long?
  inputBinding:
    prefix: -maxiters
- id: in_max_hours
  doc: Maximum time to iterate in hours (default no limit)
  type: string?
  inputBinding:
    prefix: -maxhours
- id: in_html
  doc: Write output in HTML format (default FASTA)
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_msf
  doc: Write output in GCG MSF format (default FASTA)
  type: boolean?
  inputBinding:
    prefix: -msf
- id: in_clw
  doc: Write output in CLUSTALW format (default FASTA)
  type: boolean?
  inputBinding:
    prefix: -clw
- id: in_cl_wstrict
  doc: As -clw, with 'CLUSTAL W (1.81)' header
  type: boolean?
  inputBinding:
    prefix: -clwstrict
- id: in_log
  doc: '[a] <logfile>  Log to file (append if -loga, overwrite if -log)'
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_quiet
  doc: Do not write progress messages to stderr
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_version
  doc: Display version information and exit
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output alignment in FASTA format (default stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- muscle
