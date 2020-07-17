class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fetchOrfs.py.cwl
inputs:
- id: threads_run_default
  doc: 'Threads to run (default: 1)'
  type: string
  inputBinding:
    prefix: -p
- id: fasta_file_operate
  doc: '[FASTA], --fasta [FASTA] The fasta file to operate on. (default: None)'
  type: boolean
  inputBinding:
    prefix: -f
- id: file_write_results
  doc: "[OUT], --out [OUT] The file to write results to. Leave blank for stdout, (default:\
    \ <_io.TextIOWrapper name='<stdout>' mode='w' encoding='utf-8'>)"
  type: boolean
  inputBinding:
    prefix: -o
- id: min
  doc: 'Minimum ORF length in amino acids. (default: 50)'
  type: long
  inputBinding:
    prefix: --min
- id: both_strands
  doc: 'Search both strands for ORFs. (default: False)'
  type: boolean
  inputBinding:
    prefix: --both-strands
- id: no_met_start
  doc: 'Output ORFs starting with amino acids other than MET (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-met-start
- id: from_met
  doc: 'Truncate leading amino acids up to MET (default: False)'
  type: boolean
  inputBinding:
    prefix: --from-met
- id: from_met_keep
  doc: 'Truncate leading amino acids up to MET, but keep the untruncated version as
    well. (default: False)'
  type: boolean
  inputBinding:
    prefix: --from-met-keep
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fetchOrfs.py
