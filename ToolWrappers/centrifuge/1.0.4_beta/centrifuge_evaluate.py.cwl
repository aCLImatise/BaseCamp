class: CommandLineTool
id: centrifuge_evaluate.py.cwl
inputs:
- id: in_index_base_for_read
  doc: index base for read (default same as index base)
  type: string
  inputBinding:
    prefix: --index-base-for-read
- id: in_num_fragment
  doc: 'Number of fragments in millions (default: 1)'
  type: long
  inputBinding:
    prefix: --num-fragment
- id: in_paired
  doc: Paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_error_rate
  doc: 'per-base sequencing error rate (%) (default: 0.0)'
  type: double
  inputBinding:
    prefix: --error-rate
- id: in_rank_list
  doc: "A comma-separated list of ranks (default:\nstrain,species,genus,family,order,class,phylum)"
  type: string
  inputBinding:
    prefix: --rank-list
- id: in_program_list
  doc: "A comma-separated list of aligners (default:\ncentrifuge)"
  type: string
  inputBinding:
    prefix: --program-list
- id: in_runtime_only
  doc: Just check runtime without evaluation
  type: boolean
  inputBinding:
    prefix: --runtime-only
- id: in_no_sql
  doc: Do not write results into a sqlite database
  type: boolean
  inputBinding:
    prefix: --no-sql
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_index_base
  doc: Centrifuge index
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- centrifuge_evaluate.py
