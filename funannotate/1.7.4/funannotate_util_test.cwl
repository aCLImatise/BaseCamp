class: CommandLineTool
id: funannotate_util_test.cwl
inputs:
- id: test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tests
  doc: Test sets to run. [all,clean,mask,predict,busco,rna-seq,annotate,compare]
  type: boolean
  inputBinding:
    prefix: --tests
- id: cpus
  doc: 'Number of cpus to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- test
