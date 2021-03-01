class: CommandLineTool
id: iu_gen_matching_fastq_files.cwl
inputs:
- id: in_r_one
  doc: R1
  type: File?
  inputBinding:
    prefix: --r1
- id: in_r_two
  doc: R2
  type: File?
  inputBinding:
    prefix: --r2
- id: in_identifier_code
  doc: "CODE\nLambda function to parse the header. Default:\n'''lambda defline: defline.split()[0]'''."
  type: long?
  inputBinding:
    prefix: --identifier-code
- id: in_identifier_tested
  doc: Use this flag to indicate that you tested your
  type: boolean?
  inputBinding:
    prefix: --identifier-tested
- id: in_identifier_dot
  doc: --sequential          Your identifier code parses an integer value that can
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.10--py_0
cwlVersion: v1.1
baseCommand:
- iu-gen-matching-fastq-files
