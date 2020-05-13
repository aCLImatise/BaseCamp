class: CommandLineTool
id: gmer_caller.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: counts_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: training_size
  doc: markers for training (default 100000)
  type: string
  inputBinding:
    prefix: --training_size
- id: runs
  doc: '- Perfom NUMBER runs of model training (use 0 for no training)'
  type: string
  inputBinding:
    prefix: --runs
- id: num_threads
  doc: '- Use NUM threads (min 1, max 32, default 16)'
  type: string
  inputBinding:
    prefix: --num_threads
- id: header
  doc: '- Print table header'
  type: boolean
  inputBinding:
    prefix: --header
- id: non_canonical
  doc: '- Output non-canonical genotypes'
  type: boolean
  inputBinding:
    prefix: --non_canonical
- id: prob_cut_off
  doc: '- probability cutoff for calling genotype (default 0)'
  type: boolean
  inputBinding:
    prefix: --prob_cutoff
- id: alternatives
  doc: '- Print probabilities of all alternative genotypes'
  type: boolean
  inputBinding:
    prefix: --alternatives
- id: info
  doc: '- Print information about individual'
  type: boolean
  inputBinding:
    prefix: --info
- id: no_genotypes
  doc: '- Print only summary information, not actual genotypes'
  type: boolean
  inputBinding:
    prefix: --no_genotypes
- id: model
  doc: '- Model type (full, diploid, haploid)'
  type: string
  inputBinding:
    prefix: --model
- id: params
  doc: '- Model parameters (error, p0, p1, p2, coverage, size, size2)'
  type: string
  inputBinding:
    prefix: --params
- id: coverage
  doc: '- Average coverage of reads'
  type: string
  inputBinding:
    prefix: --coverage
- id: d
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- gmer_caller
