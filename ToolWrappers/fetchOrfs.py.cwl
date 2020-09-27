class: CommandLineTool
id: fetchOrfs.py.cwl
inputs:
- id: in_threads_run_default
  doc: 'Threads to run (default: 1)'
  type: long
  inputBinding:
    prefix: -p
- id: in_fasta_file_operate
  doc: "[FASTA], --fasta [FASTA]\nThe fasta file to operate on. (default: None)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,\n\
    (default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File
  inputBinding:
    prefix: -o
- id: in_min
  doc: 'Minimum ORF length in amino acids. (default: 50)'
  type: long
  inputBinding:
    prefix: --min
- id: in_both_strands
  doc: 'Search both strands for ORFs. (default: False)'
  type: boolean
  inputBinding:
    prefix: --both-strands
- id: in_no_met_start
  doc: "Output ORFs starting with amino acids other than MET\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --no-met-start
- id: in_from_met
  doc: "Truncate leading amino acids up to MET (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --from-met
- id: in_from_met_keep
  doc: "Truncate leading amino acids up to MET, but keep the\nuntruncated version\
    \ as well. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --from-met-keep
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,\n\
    (default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File
  outputBinding:
    glob: $(inputs.in_file_write_results)
cwlVersion: v1.1
baseCommand:
- fetchOrfs.py
