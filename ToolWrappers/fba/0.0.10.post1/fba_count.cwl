class: CommandLineTool
id: fba_count.cwl
inputs:
- id: in_input
  doc: specify an input file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: specify an output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_umi_start
  doc: "specify expected UMI starting postion on read 1.\nDefault (16)"
  type: long?
  inputBinding:
    prefix: --umi_start
- id: in_umi_length
  doc: "specify the length of UMIs on read 1. Reads with UMI\nlength less than this\
    \ value will be discarded. Default\n(12)"
  type: long?
  inputBinding:
    prefix: --umi_length
- id: in_umi_mismatches
  doc: "specify the maximun edit distance allowed for UMIs on\nread 1 for deduplication.\
    \ Default (1)"
  type: long?
  inputBinding:
    prefix: --umi_mismatches
- id: in_umi_de_duplication_method
  doc: "specify UMI deduplication method (powered by UMI-\ntools. Smith, T., et al.\
    \ 2017). Default (directional)\n"
  type: string?
  inputBinding:
    prefix: --umi_deduplication_method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: specify an output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- count
