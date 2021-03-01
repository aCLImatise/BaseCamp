class: CommandLineTool
id: GeneAssign.py.cwl
inputs:
- id: in_random_seed
  doc: "specifies seed for numpy random number generator\ndefaults to 23724839 applied\
    \ after random filtering"
  type: long?
  inputBinding:
    prefix: --random_seed
- id: in_eta_max
  doc: maximum contig contig count for sampler defaults to 2
  type: long?
  inputBinding:
    prefix: --eta_max
- id: in_iter_max
  doc: number of Gibbs sampling iterations
  type: long?
  inputBinding:
    prefix: --iter_max
- id: in_var_max
  doc: "maximum number of variants to user per contig defaults\nto all (1e10) if unset"
  type: long?
  inputBinding:
    prefix: --var_max
- id: in_output_stub
  doc: string specifying output file stubs
  type: File?
  inputBinding:
    prefix: --output_stub
- id: in_genomes
  doc: specify validation file of known genome composition
  type: File?
  inputBinding:
    prefix: --genomes
- id: in_variant_file
  doc: specify file of called variants on genes if available
  type: File?
  inputBinding:
    prefix: --variant_file
- id: in_scg_cov_file
  doc: input core gene coverages
  type: string
  inputBinding:
    position: 0
- id: in_gamma_star_file
  doc: input MAP estimate frequencies
  type: string
  inputBinding:
    position: 1
- id: in_cov_file
  doc: mean contig/genes coverages
  type: string
  inputBinding:
    position: 2
- id: in_epsilon_file
  doc: predicted transition matrix
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_stub
  doc: string specifying output file stubs
  type: File?
  outputBinding:
    glob: $(inputs.in_output_stub)
hints: []
cwlVersion: v1.1
baseCommand:
- GeneAssign.py
