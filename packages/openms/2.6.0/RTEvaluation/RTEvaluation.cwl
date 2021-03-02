class: CommandLineTool
id: RTEvaluation.cwl
inputs:
- id: in_in
  doc: "*             Input file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_sequences_file
  doc: "Fasta File (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -sequences_file
- id: in_out
  doc: "*            Output file  (valid formats: 'tsv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_latex
  doc: Indicates whether the output file format of the table should be LaTeX or TSV
    (default)
  type: File?
  inputBinding:
    prefix: -latex
- id: in_p_value_dim_one
  doc: "Significance level of first dimension RT filter (default: '0.01' min: '0.0'\
    \ max: '1.0')"
  type: double?
  inputBinding:
    prefix: -p_value_dim_1
- id: in_p_value_dim_two
  doc: "Significance level of second dimension RT filter (default: '0.05' min: '0.0'\
    \ max: '1.0')"
  type: double?
  inputBinding:
    prefix: -p_value_dim_2
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*            Output file  (valid formats: 'tsv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_latex
  doc: Indicates whether the output file format of the table should be LaTeX or TSV
    (default)
  type: File?
  outputBinding:
    glob: $(inputs.in_latex)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- RTEvaluation
