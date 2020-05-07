class: CommandLineTool
id: metacherchant.sh.cwl
inputs:
- id: meta_cher_chant
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: launch_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_parameters
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: k-mer size (MANDATORY)
  type: string
  inputBinding:
    prefix: --k
- id: seq
  doc: FASTA file with sequences (MANDATORY)
  type: string
  inputBinding:
    prefix: --seq
- id: output
  doc: output directory (MANDATORY)
  type: string
  inputBinding:
    prefix: --output
- id: memory
  doc: 'memory to use (for example: 1500M, 4G, etc.) (optional, default: 2 Gb)'
  type: string
  inputBinding:
    prefix: --memory
- id: work_dir
  doc: 'working directory (optional, default: workDir)'
  type: string
  inputBinding:
    prefix: --work-dir
- id: continue
  doc: continue the previous run from last succeed stage, saved in working directory
    (optional)
  type: boolean
  inputBinding:
    prefix: --continue
- id: force
  doc: force run with rewriting old results (optional)
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- metacherchant.sh
