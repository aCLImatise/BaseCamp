class: CommandLineTool
id: bamdifference.cwl
inputs:
- id: in_verbose
  doc: ': print progress report'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_md_five
  doc: '<[0]>              : create md5 check sum (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --md5
- id: in_md_five_filename
  doc: ': file name for md5 check sum (default: extend output file name)'
  type: File?
  inputBinding:
    prefix: --md5filename
- id: in_full_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_partial_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_md_five_filename
  doc: ': file name for md5 check sum (default: extend output file name)'
  type: File?
  outputBinding:
    glob: $(inputs.in_md_five_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- bamdifference
