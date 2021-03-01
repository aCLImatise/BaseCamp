class: CommandLineTool
id: pyfastx_sample.cwl
inputs:
- id: in_number_sequences_sampled
  doc: number of sequences to be sampled
  type: long?
  inputBinding:
    prefix: -n
- id: in_proportion_sequences_sampled
  doc: proportion of sequences to be sampled, 0~1
  type: double?
  inputBinding:
    prefix: -p
- id: in_seed
  doc: random seed, default is the current system time
  type: long?
  inputBinding:
    prefix: --seed
- id: in_sequential_read
  doc: "start sequential reading, particularly suitable for\nsampling large numbers\
    \ of sequences"
  type: boolean?
  inputBinding:
    prefix: --sequential-read
- id: in_out_file
  doc: "output file, default: output to stdout\n"
  type: File?
  inputBinding:
    prefix: --out-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "output file, default: output to stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- pyfastx
- sample
