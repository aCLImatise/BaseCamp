class: CommandLineTool
id: dRep_bonus.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_run_tax
  doc: 'generate taxonomy information (Tdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --run_tax
- id: in_tax_method
  doc: "Method of determining taxonomy\npercent = The most descriptive taxonimic level\
    \ with at least (per) hits\nmax     = The centrifuge taxonomic level with the\
    \ most overall hits (default: percent)"
  type: string
  inputBinding:
    prefix: --tax_method
- id: in_percent
  doc: 'minimum percent for percent method (default: 50)'
  type: long
  inputBinding:
    prefix: --percent
- id: in_cent_index
  doc: "path to centrifuge index (for example,\n/home/mattolm/download/centrifuge/indices/b+h+v\n\
    (default: None)"
  type: File
  inputBinding:
    prefix: --cent_index
- id: in_check_dependencies
  doc: "Check if program has access to all dependencies\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --check_dependencies
- id: in_genomes_check_default
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to check\
    \ in .fasta format (default: None)\n"
  type: boolean
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dRep
- bonus
