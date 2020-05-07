class: CommandLineTool
id: centrifuge_evaluate.py.cwl
inputs:
- id: index_base
  doc: Centrifuge index
  type: string
  inputBinding:
    position: 0
- id: index_base_for_read
  doc: index base for read (default same as index base)
  type: string
  inputBinding:
    prefix: --index-base-for-read
- id: num_fragment
  doc: 'Number of fragments in millions (default: 1)'
  type: string
  inputBinding:
    prefix: --num-fragment
- id: paired
  doc: Paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: error_rate
  doc: 'per-base sequencing error rate (%) (default: 0.0)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: rank_list
  doc: 'A comma-separated list of ranks (default: strain,species,genus,family,order,class,phylum)'
  type: string
  inputBinding:
    prefix: --rank-list
- id: program_list
  doc: 'A comma-separated list of aligners (default: centrifuge)'
  type: string
  inputBinding:
    prefix: --program-list
- id: runtime_only
  doc: Just check runtime without evaluation
  type: boolean
  inputBinding:
    prefix: --runtime-only
- id: no_sql
  doc: Do not write results into a sqlite database
  type: boolean
  inputBinding:
    prefix: --no-sql
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Debug
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge_evaluate.py
