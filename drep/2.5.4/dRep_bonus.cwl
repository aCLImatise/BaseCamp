class: CommandLineTool
id: dRep_bonus.cwl
inputs:
- id: work_directory
  doc: Directory where data and output     *** USE THE SAME WORK DIRECTORY FOR ALL
    DREP OPERATIONS ***
  type: string
  inputBinding:
    position: 0
- id: processors
  doc: 'threads (default: 6)'
  type: string
  inputBinding:
    prefix: --processors
- id: debug
  doc: 'make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: run_tax
  doc: 'generate taxonomy information (Tdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --run_tax
- id: tax_method
  doc: 'Method of determining taxonomy percent = The most descriptive taxonimic level
    with at least (per) hits max     = The centrifuge taxonomic level with the most
    overall hits (default: percent)'
  type: string
  inputBinding:
    prefix: --tax_method
- id: percent
  doc: 'minimum percent for percent method (default: 50)'
  type: string
  inputBinding:
    prefix: --percent
- id: cent_index
  doc: 'path to centrifuge index (for example, /home/mattolm/download/centrifuge/indices/b+h+v
    (default: None)'
  type: string
  inputBinding:
    prefix: --cent_index
- id: check_dependencies
  doc: 'Check if program has access to all dependencies (default: False)'
  type: boolean
  inputBinding:
    prefix: --check_dependencies
- id: g
  doc: '[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]] genomes to check
    in .fasta format (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- dRep
- bonus
