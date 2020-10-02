class: CommandLineTool
id: rsem_simulate_reads.cwl
inputs:
- id: in_seed
  doc: ': Set seed for the random number generator used in simulation. The seed should
    be a 32-bit unsigned integer.'
  type: long
  inputBinding:
    prefix: --seed
- id: in_set_it_will
  doc: ': Set it will stop outputting intermediate information.'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_estimated_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_estimated_isoform_results
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_theta_zero
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output_name
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-simulate-reads
