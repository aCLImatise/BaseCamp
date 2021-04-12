class: CommandLineTool
id: Binsanity_profile.cwl
inputs:
- id: in_specify_fasta_file
  doc: Specify fasta file being profiled
  type: File?
  inputBinding:
    prefix: -i
- id: in_identify_location_indexed
  doc: "identify location of BAM files\nBAM files should be indexed and sorted"
  type: string?
  inputBinding:
    prefix: -s
- id: in_identify_name_output
  doc: Identify name of output file for coverage information
  type: File?
  inputBinding:
    prefix: -c
- id: in_transform
  doc: "Indicate what type of data transformation you want in the final file [Default:log]:\n\
    scale --> Scaled by multiplying by 100 and log transforming\nlog --> Log transform\n\
    None --> Raw Coverage Values\nX5 --> Multiplication by 5\nX10 --> Multiplication\
    \ by 10\nX100 --> Multiplication by 100\nSQR --> Square root\nWe recommend using\
    \ a scaled log transformation for initial testing.\nOther transformations can\
    \ be useful on a case by case basis"
  type: File?
  inputBinding:
    prefix: --transform
- id: in_specify_number_threads
  doc: 'Specify Number of Threads For Feature Counts [Default: 1]'
  type: long?
  inputBinding:
    prefix: -T
- id: in_specify_directory_deposited
  doc: 'Specify directory for output files to be deposited [Default: Working Directory]'
  type: Directory?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_identify_name_output
  doc: Identify name of output file for coverage information
  type: File?
  outputBinding:
    glob: $(inputs.in_identify_name_output)
- id: out_specify_directory_deposited
  doc: 'Specify directory for output files to be deposited [Default: Working Directory]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_specify_directory_deposited)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- Binsanity-profile
