class: CommandLineTool
id: ../../../msp_simulate.cwl
inputs:
- id: in_length
  doc: The length of the simulated region in base pairs.
  type: long
  inputBinding:
    prefix: --length
- id: in_recombination_rate
  doc: The recombination rate per base per generation
  type: string
  inputBinding:
    prefix: --recombination-rate
- id: in_mutation_rate
  doc: The mutation rate per base per generation
  type: string
  inputBinding:
    prefix: --mutation-rate
- id: in_effective_population_size
  doc: The effective population size Ne
  type: long
  inputBinding:
    prefix: --effective-population-size
- id: in_random_seed
  doc: "The random seed. If not specified one is chosen\nrandomly"
  type: string
  inputBinding:
    prefix: --random-seed
- id: in_compress
  doc: Enable HDF5's transparent zlib compression
  type: boolean
  inputBinding:
    prefix: --compress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msp
- simulate
