class: CommandLineTool
id: bohra_nulla2bohra.cwl
inputs:
- id: workdir
  doc: 'Working directory, default is current directory (default: /tmp/tmpwhu0e7qn)'
  type: string
  inputBinding:
    prefix: -workdir
- id: job_id
  doc: 'Job directory - the --name you used for nullarbor, will be the name of the
    output directory (default: )'
  type: string
  inputBinding:
    prefix: --job_id
- id: input_file
  doc: 'Input file = tab-delimited with 3 columns <isolatename> <path_to_read1> <path_to_read2>
    (default: )'
  type: string
  inputBinding:
    prefix: --input_file
- id: reference
  doc: 'The reference that was used in the previous run/ nullarbor job (default: )'
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- bohra
- nulla2bohra
