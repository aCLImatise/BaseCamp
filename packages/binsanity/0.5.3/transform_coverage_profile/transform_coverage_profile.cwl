class: CommandLineTool
id: transform_coverage_profile.cwl
inputs:
- id: in_specify_the_cov
  doc: Specify the cov
  type: string?
  inputBinding:
    prefix: -c
- id: in_indicate_type_want
  doc: "Indicate what type of data transformation you want in the final file (default\
    \ is log):\nscale --> Multiplication by 100 and log transform\nlog --> Log transform\n\
    X5 --> Multiplication by 5\nX10 --> Multiplication by 10\nSQR --> Square root\n\
    We recommend using a log transformation for initial testing. Other transformations\
    \ can be useful in cases where there is an extremely low range distribution of\
    \ coverages and when coverage values are low\n"
  type: File?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- transform-coverage-profile
