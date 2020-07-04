class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tb_profiler_fasta_profile.cwl
inputs:
- id: db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: external_db
  doc: 'Path to db files prefix (overrides "--db" parameter) (default: None)'
  type: string
  inputBinding:
    prefix: --external_db
- id: dir
  doc: 'Storage directory (default: .)'
  type: string
  inputBinding:
    prefix: --dir
- id: txt
  doc: 'Add text output (default: False)'
  type: boolean
  inputBinding:
    prefix: --txt
- id: csv
  doc: 'Add CSV output (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv
- id: pdf
  doc: 'Add PDF output. This requires pdflatex to be installed (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdf
- id: add_columns
  doc: 'Add additional columns found in the mutation database to the text and pdf
    results (default: None)'
  type: string
  inputBinding:
    prefix: --add_columns
- id: verbose
  doc: 'Verbosity increases from 0 to 2 (default: 0)'
  type: string
  inputBinding:
    prefix: --verbose
- id: fast_a
  doc: VCF file
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: VCF file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- fasta_profile
