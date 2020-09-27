class: CommandLineTool
id: hmmcalibrate2.cwl
inputs:
- id: in_cpu
  doc: ': run <n> threads in parallel (if threaded)'
  type: string
  inputBinding:
    prefix: --cpu
- id: in_fixed
  doc: ': fix random sequence length at <n>'
  type: long
  inputBinding:
    prefix: --fixed
- id: in_hist_file
  doc: ': save histogram(s) to file <f>'
  type: File
  inputBinding:
    prefix: --histfile
- id: in_mean
  doc: ': set random seq length mean at <x> [350]'
  type: long
  inputBinding:
    prefix: --mean
- id: in_num
  doc: ': set number of sampled seqs to <n> [5000]'
  type: long
  inputBinding:
    prefix: --num
- id: in_pvm
  doc: ': run on a Parallel Virtual Machine (PVM)'
  type: boolean
  inputBinding:
    prefix: --pvm
- id: in_sd
  doc: ': set random seq length std. dev to <x> [350]'
  type: long
  inputBinding:
    prefix: --sd
- id: in_seed
  doc: ': set random seed to <n> [time()]'
  type: string
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_hmmcalibrate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmcalibrate2
