class: CommandLineTool
id: simkaMin_update.py.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    input file of datasets (datasets to add to existing simka results'
  type: boolean
  inputBinding:
    prefix: -in
- id: in_in_to_update
  doc: '(1 arg) :    path to existing simka results to update (existing results will
    be overwritten)'
  type: boolean
  inputBinding:
    prefix: -in-to-update
- id: in_bin
  doc: '(1 arg) :    path to simkaMinCore program (to be specified if not in PATH,
    or not in standard installation directory <simkaDir>/build/bin/simkaMinCore)'
  type: boolean
  inputBinding:
    prefix: -bin
- id: in_nb_cores
  doc: '(1 arg) :    number of cores [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: in_max_memory
  doc: '(1 arg) :    max memory (MB) [Default: 8000]'
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: in_filter
  doc: '(0 arg) :    filter out k-mer seen one time (potentially erroneous)'
  type: boolean
  inputBinding:
    prefix: -filter
- id: in_max_reads
  doc: '(1 arg) :    maximum number of reads per sample to process [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -max-reads
- id: in_min_read_size
  doc: '(1 arg) :    minimal size a read should have to be kept [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -min-read-size
- id: in_min_shannon_index
  doc: '(1 arg) :    minimal Shannon index a read should have to be kept. Float in
    [0,2] [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -min-shannon-index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simkaMin_update.py
