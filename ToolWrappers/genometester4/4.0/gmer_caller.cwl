class: CommandLineTool
id: gmer_caller.cwl
inputs:
- id: in_training_size
  doc: '- Use NUM markers for training (default 100000)'
  type: long?
  inputBinding:
    prefix: --training_size
- id: in_runs
  doc: '- Perfom NUMBER runs of model training (use 0 for no training)'
  type: long?
  inputBinding:
    prefix: --runs
- id: in_num_threads
  doc: '- Use NUM threads (min 1, max 32, default 16)'
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_header
  doc: '- Print table header'
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_non_canonical
  doc: '- Output non-canonical genotypes'
  type: boolean?
  inputBinding:
    prefix: --non_canonical
- id: in_prob_cut_off
  doc: '- probability cutoff for calling genotype (default 0)'
  type: boolean?
  inputBinding:
    prefix: --prob_cutoff
- id: in_alternatives
  doc: '- Print probabilities of all alternative genotypes'
  type: boolean?
  inputBinding:
    prefix: --alternatives
- id: in_info
  doc: '- Print information about individual'
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_no_genotypes
  doc: '- Print only summary information, not actual genotypes'
  type: boolean?
  inputBinding:
    prefix: --no_genotypes
- id: in_model
  doc: '- Model type (full, diploid, haploid)'
  type: string?
  inputBinding:
    prefix: --model
- id: in_params
  doc: '- Model parameters (error, p0, p1, p2, coverage, size, size2)'
  type: long?
  inputBinding:
    prefix: --params
- id: in_coverage
  doc: '- Average coverage of reads'
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_increase_debug_level
  doc: '- increase debug level'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gmer_caller
