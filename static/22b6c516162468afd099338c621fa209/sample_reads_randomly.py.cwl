class: CommandLineTool
id: sample_reads_randomly.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_num_reads
  doc: "samples the number of sequences or pairs specified\nwith -N (default: 100000)"
  type: long?
  inputBinding:
    prefix: --num_reads
- id: in_random_seed
  doc: "Provide a random seed for the generator (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_force_single
  doc: "Ignore read pair information if present (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --force_single
- id: in_output
  doc: 'Overwrite output file if it exits (default: False)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
- id: in_filenames
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Overwrite output file if it exits (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sample-reads-randomly.py
