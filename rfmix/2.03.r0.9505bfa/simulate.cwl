#!/usr/bin/env cwl-runner

baseCommand:
- simulate
class: CommandLineTool
cwlVersion: v1.0
id: simulate
inputs:
- doc: Number of generations to simulate random mating admixture
  id: generations
  inputBinding:
    prefix: --generations
  type: long
- doc: After first generation of random mating, make recombinant inbred lines by selfing
  id: make_r_ils
  inputBinding:
    prefix: --make-rils
  type: boolean
- doc: introduce phasing switches at this rate. verification data is not switched
  id: phasing_switch
  inputBinding:
    prefix: --phasing-switch
  type: double
- doc: Seed value for random number generation - integer value (maybe specified inhexadecimal
    by preceeding with 0x), or the string "clock" to seed with the current system
    time.
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string
