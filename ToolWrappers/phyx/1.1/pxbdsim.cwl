class: CommandLineTool
id: pxbdsim.cwl
inputs:
- id: in_extant
  doc: number of extant species, alt to time
  type: long?
  inputBinding:
    prefix: --extant
- id: in_time
  doc: timespan of simulation (age of root), alt to extant
  type: string?
  inputBinding:
    prefix: --time
- id: in_birth
  doc: birth rate, default=1
  type: long?
  inputBinding:
    prefix: --birth
- id: in_death
  doc: death rate, default=0
  type: long?
  inputBinding:
    prefix: --death
- id: in_n_reps
  doc: number of replicates, default=1
  type: long?
  inputBinding:
    prefix: --nreps
- id: in_out_f
  doc: output file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_show_extinct
  doc: show lineages that went extinct, default=false
  type: boolean?
  inputBinding:
    prefix: --showextinct
- id: in_seed
  doc: random number seed, clock otherwise
  type: long?
  inputBinding:
    prefix: --seed
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxbdsim
