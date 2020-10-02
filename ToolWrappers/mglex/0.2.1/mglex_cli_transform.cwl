class: CommandLineTool
id: mglex_cli_transform.cwl
inputs:
- id: in_data
  doc: Likelihood matrix; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: in_precision
  doc: Output precision; default 2
  type: long
  inputBinding:
    prefix: --precision
- id: in_beta
  doc: Beta correction factor (e.g. determined via MSE evaluation); default 1.0
  type: double
  inputBinding:
    prefix: --beta
- id: in_raw_probability
  doc: Show output in normal representation (small number become zero)
  type: boolean
  inputBinding:
    prefix: --raw-probability
- id: in_maximum_likelihood
  doc: Give only the class(es) with the maximum likelihood a non-zero probability
  type: boolean
  inputBinding:
    prefix: --maximum-likelihood
- id: in_posterior
  doc: Normalize the likelihood values over classes (uniform class prior)
  type: boolean
  inputBinding:
    prefix: --posterior
- id: in_posterior_ratio
  doc: Divide all likelihoods by the maximum likelihood
  type: boolean
  inputBinding:
    prefix: --posterior-ratio
- id: in_logarithm
  doc: Convert from simple to logarithmic format
  type: boolean
  inputBinding:
    prefix: --logarithm
- id: in_class_index
  doc: Report only class indices (one-based) with likelihoods above threshold; default
    1.0
  type: double
  inputBinding:
    prefix: --class-index
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_transform
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mglex-cli
- transform
