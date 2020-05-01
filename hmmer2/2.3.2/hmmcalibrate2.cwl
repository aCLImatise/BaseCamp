#!/usr/bin/env cwl-runner

baseCommand:
- hmmcalibrate2
class: CommandLineTool
cwlVersion: v1.0
id: hmmcalibrate2
inputs:
- doc: ''
  id: hmmcalibrate
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: hmm_file
  inputBinding:
    position: 1
  type: string
- doc: ': run <n> threads in parallel (if threaded)'
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: ': fix random sequence length at <n>'
  id: fixed
  inputBinding:
    prefix: --fixed
  type: string
- doc: ': save histogram(s) to file <f>'
  id: hist_file
  inputBinding:
    prefix: --histfile
  type: string
- doc: ': set random seq length mean at <x> [350]'
  id: mean
  inputBinding:
    prefix: --mean
  type: string
- doc: ': set number of sampled seqs to <n> [5000]'
  id: num
  inputBinding:
    prefix: --num
  type: string
- doc: ': run on a Parallel Virtual Machine (PVM)'
  id: pvm
  inputBinding:
    prefix: --pvm
  type: boolean
- doc: ': set random seq length std. dev to <x> [350]'
  id: sd
  inputBinding:
    prefix: --sd
  type: string
- doc: ': set random seed to <n> [time()]'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
