class: CommandLineTool
id: mglex_cli_transform.cwl
inputs:
- id: transform
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: transform
  doc: '[--data <file>] [--beta <float> --precision <int>] [--logarithm|--maximum-likelihood|--posterior|--posterior-ratio|--class-index
    <float>] [--raw-probability]'
  type: string
  inputBinding:
    position: 1
- id: data
  doc: Likelihood matrix; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: precision
  doc: Output precision; default 2
  type: long
  inputBinding:
    prefix: --precision
- id: beta
  doc: Beta correction factor (e.g. determined via MSE evaluation); default 1.0
  type: double
  inputBinding:
    prefix: --beta
- id: raw_probability
  doc: Show output in normal representation (small number become zero)
  type: boolean
  inputBinding:
    prefix: --raw-probability
- id: maximum_likelihood
  doc: Give only the class(es) with the maximum likelihood a non-zero probability
  type: boolean
  inputBinding:
    prefix: --maximum-likelihood
- id: posterior
  doc: Normalize the likelihood values over classes (uniform class prior)
  type: boolean
  inputBinding:
    prefix: --posterior
- id: posterior_ratio
  doc: Divide all likelihoods by the maximum likelihood
  type: boolean
  inputBinding:
    prefix: --posterior-ratio
- id: logarithm
  doc: Convert from simple to logarithmic format
  type: boolean
  inputBinding:
    prefix: --logarithm
- id: class_index
  doc: Report only class indices (one-based) with likelihoods above threshold; default
    1.0
  type: double
  inputBinding:
    prefix: --class-index
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- transform
