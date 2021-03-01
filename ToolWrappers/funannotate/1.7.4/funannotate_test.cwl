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
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- funannotate
- test
