class: CommandLineTool
id: R_scape_sim_nobps.cwl
inputs:
- id: in__be_verbose
  doc: ': be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_number_sequences_simulated
  doc: ': number of sequences in the simulated msa, N=0 for use all  [0]'
  type: long?
  inputBinding:
    prefix: -N
- id: in_noss
  doc: ': assume unstructured, even if msa has a given ss_cons'
  type: boolean?
  inputBinding:
    prefix: --noss
- id: in_in_format
  doc: ': specify format'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_outdir
  doc: ': specify a directory for all output files'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean?
  inputBinding:
    prefix: --onemsa
- id: in_seed
  doc: ': set RNG seed to <n>  [0]'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_msa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ': specify a directory for all output files'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_send_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- R-scape-sim-nobps
