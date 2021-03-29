class: CommandLineTool
id: supersim.cwl
inputs:
- id: in_out_files
  doc: PREFIX.seq PREFIX.glf PREFIX.frq PREFIX.arg
  type: string?
  inputBinding:
    prefix: -outfiles
- id: in_n_pop
  doc: Number of populations. This MUST be set before -nind [1]
  type: boolean?
  inputBinding:
    prefix: -npop
- id: in_n_ind
  doc: Number of diploid individuals for each population [10]
  type: boolean?
  inputBinding:
    prefix: -nind
- id: in_n_sites
  doc: of sites [500000]
  type: long?
  inputBinding:
    prefix: -nsites
- id: in_er_rate
  doc: sequencing error rate [0.0075]
  type: double?
  inputBinding:
    prefix: -errate
- id: in_depth
  doc: Mean sequencing depth [5]
  type: boolean?
  inputBinding:
    prefix: -depth
- id: in_p_var
  doc: Probability that a site is variable in the population [0.015]
  type: boolean?
  inputBinding:
    prefix: -pvar
- id: in_m_freq
  doc: Minimum population frequency [0.0001]
  type: boolean?
  inputBinding:
    prefix: -mfreq
- id: in_inbreeding_coefficient_population
  doc: inbreeding coefficient for each population [0]
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_model
  doc: 0=fixed errate 1=variable errate [1]
  type: boolean?
  inputBinding:
    prefix: -model
- id: in_simpler_and
  doc: boolean [1]
  type: boolean?
  inputBinding:
    prefix: -simpleRand
- id: in_base_freq
  doc: Background allele frequencies for A,C,G,T [0.25 0.25 0.25 0.25]
  type: boolean?
  inputBinding:
    prefix: -base_freq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/angsd:0.935--hd2e4403_0
cwlVersion: v1.1
baseCommand:
- supersim
