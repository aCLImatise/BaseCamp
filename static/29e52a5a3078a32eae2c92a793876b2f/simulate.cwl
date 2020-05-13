class: CommandLineTool
id: simulate.cwl
inputs:
- id: generations
  doc: Number of generations to simulate random mating admixture
  type: long
  inputBinding:
    prefix: --generations
- id: make_r_ils
  doc: After first generation of random mating, make recombinant inbred lines by selfing
  type: boolean
  inputBinding:
    prefix: --make-rils
- id: phasing_switch
  doc: introduce phasing switches at this rate. verification data is not switched
  type: double
  inputBinding:
    prefix: --phasing-switch
- id: random_seed
  doc: Seed value for random number generation - integer value (maybe specified inhexadecimal
    by preceeding with 0x), or the string "clock" to seed with the current system
    time.
  type: string
  inputBinding:
    prefix: --random-seed
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate
