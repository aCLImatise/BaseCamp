class: CommandLineTool
id: supersim.cwl
inputs:
- id: out_files
  doc: PREFIX.seq PREFIX.glf PREFIX.frq PREFIX.arg
  type: string
  inputBinding:
    prefix: -outfiles
- id: n_pop
  doc: Number of populations. This MUST be set before -nind [1]
  type: boolean
  inputBinding:
    prefix: -npop
- id: n_ind
  doc: Number of diploid individuals for each population [10]
  type: boolean
  inputBinding:
    prefix: -nind
- id: n_sites
  doc: of sites [500000]
  type: string
  inputBinding:
    prefix: -nsites
- id: er_rate
  doc: sequencing error rate [0.0075]
  type: string
  inputBinding:
    prefix: -errate
- id: depth
  doc: Mean sequencing depth [5]
  type: boolean
  inputBinding:
    prefix: -depth
- id: p_var
  doc: Probability that a site is variable in the population [0.015]
  type: boolean
  inputBinding:
    prefix: -pvar
- id: m_freq
  doc: Minimum population frequency [0.0001]
  type: boolean
  inputBinding:
    prefix: -mfreq
- id: f
  doc: inbreeding coefficient for each population [0]
  type: boolean
  inputBinding:
    prefix: -F
- id: model
  doc: 0=fixed errate 1=variable errate [1]
  type: boolean
  inputBinding:
    prefix: -model
- id: simpler_and
  doc: boolean [1]
  type: boolean
  inputBinding:
    prefix: -simpleRand
- id: base_freq
  doc: Background allele frequencies for A,C,G,T [0.25 0.25 0.25 0.25]
  type: boolean
  inputBinding:
    prefix: -base_freq
outputs: []
cwlVersion: v1.1
baseCommand:
- supersim
