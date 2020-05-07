class: CommandLineTool
id: Binsanity_profile.cwl
inputs:
- id: i
  doc: Specify fasta file being profiled
  type: string
  inputBinding:
    prefix: -i
- id: s
  doc: identify location of BAM files BAM files should be indexed and sorted
  type: string
  inputBinding:
    prefix: -s
- id: c
  doc: Identify name of output file for coverage information
  type: string
  inputBinding:
    prefix: -c
- id: transform
  doc: 'Indicate what type of data transformation you want in the final file [Default:log]:
    scale --> Scaled by multiplying by 100 and log transforming log --> Log transform
    None --> Raw Coverage Values X5 --> Multiplication by 5 X10 --> Multiplication
    by 10 X100 --> Multiplication by 100 SQR --> Square root We recommend using a
    scaled log transformation for initial testing. Other transformations can be useful
    on a case by case basis'
  type: string
  inputBinding:
    prefix: --transform
- id: t
  doc: 'Specify Number of Threads For Feature Counts [Default: 1]'
  type: string
  inputBinding:
    prefix: -T
- id: o
  doc: 'Specify directory for output files to be deposited [Default: Working Directory]'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- Binsanity-profile
