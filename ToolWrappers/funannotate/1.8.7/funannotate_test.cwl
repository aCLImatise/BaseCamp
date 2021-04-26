class: CommandLineTool
id: funannotate_test.cwl
inputs:
- id: in_tests
  doc: Test sets to run. [all,clean,mask,predict,busco,rna-seq,annotate,compare]
  type: boolean?
  inputBinding:
    prefix: --tests
- id: in_cpus
  doc: 'Number of cpus to use. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_debug
  doc: Keep output files
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- funannotate
- test
