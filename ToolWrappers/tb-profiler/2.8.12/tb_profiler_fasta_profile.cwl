class: CommandLineTool
id: tb_profiler_fasta_profile.cwl
inputs:
- id: in_db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File
  inputBinding:
    prefix: --external_db
- id: in_dir
  doc: 'Storage directory (default: .)'
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_txt
  doc: 'Add text output (default: False)'
  type: boolean
  inputBinding:
    prefix: --txt
- id: in_csv
  doc: 'Add CSV output (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv
- id: in_pdf
  doc: "Add PDF output. This requires pdflatex to be installed\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --pdf
- id: in_add_columns
  doc: "Add additional columns found in the mutation database\nto the text and pdf\
    \ results (default: None)"
  type: string
  inputBinding:
    prefix: --add_columns
- id: in_verbose
  doc: 'Verbosity increases from 0 to 2 (default: 0)'
  type: string
  inputBinding:
    prefix: --verbose
- id: in_fast_a
  doc: VCF file
  type: string
  inputBinding:
    position: 0
- id: in_prefix
  doc: VCF file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tb-profiler
- fasta_profile
