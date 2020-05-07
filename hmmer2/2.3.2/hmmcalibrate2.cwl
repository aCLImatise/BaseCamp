class: CommandLineTool
id: hmmcalibrate2.cwl
inputs:
- id: hmmcalibrate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cpu
  doc: ': run <n> threads in parallel (if threaded)'
  type: string
  inputBinding:
    prefix: --cpu
- id: fixed
  doc: ': fix random sequence length at <n>'
  type: string
  inputBinding:
    prefix: --fixed
- id: hist_file
  doc: ': save histogram(s) to file <f>'
  type: string
  inputBinding:
    prefix: --histfile
- id: mean
  doc: ': set random seq length mean at <x> [350]'
  type: string
  inputBinding:
    prefix: --mean
- id: num
  doc: ': set number of sampled seqs to <n> [5000]'
  type: string
  inputBinding:
    prefix: --num
- id: pvm
  doc: ': run on a Parallel Virtual Machine (PVM)'
  type: boolean
  inputBinding:
    prefix: --pvm
- id: sd
  doc: ': set random seq length std. dev to <x> [350]'
  type: string
  inputBinding:
    prefix: --sd
- id: seed
  doc: ': set random seed to <n> [time()]'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmcalibrate2
