class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/R_scape_sim_nobps.cwl
inputs:
- id: _be_verbose
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: number_sequences_simulated
  doc: ': number of sequences in the simulated msa, N=0 for use all  [0]'
  type: string
  inputBinding:
    prefix: -N
- id: noss
  doc: ': assume unstructured, even if msa has a given ss_cons'
  type: boolean
  inputBinding:
    prefix: --noss
- id: in_format
  doc: ': specify format'
  type: string
  inputBinding:
    prefix: --informat
- id: outdir
  doc: ': specify a directory for all output files'
  type: string
  inputBinding:
    prefix: --outdir
- id: send_output_file
  doc: ': send output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean
  inputBinding:
    prefix: --onemsa
- id: to_l
  doc: ': tolerance  [1e-3]'
  type: string
  inputBinding:
    prefix: --tol
- id: seed
  doc: ': set RNG seed to <n>  [0]'
  type: string
  inputBinding:
    prefix: --seed
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: msa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- R-scape-sim-nobps
