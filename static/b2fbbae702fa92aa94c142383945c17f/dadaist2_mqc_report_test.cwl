class: CommandLineTool
id: dadaist2_mqc_report_test.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_output
  doc: Produce multiqc report
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- dadaist2-mqc-report-test
