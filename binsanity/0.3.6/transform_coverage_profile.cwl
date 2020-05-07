class: CommandLineTool
id: transform_coverage_profile.cwl
inputs:
- id: c
  doc: Specify the cov
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: 'Indicate what type of data transformation you want in the final file (default
    is log): scale --> Multiplication by 100 and log transform log --> Log transform
    X5 --> Multiplication by 5 X10 --> Multiplication by 10 SQR --> Square root We
    recommend using a log transformation for initial testing. Other transformations
    can be useful in cases where there is an extremely low range distribution of coverages
    and when coverage values are low'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- transform-coverage-profile
