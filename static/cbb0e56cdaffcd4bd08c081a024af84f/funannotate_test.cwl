class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/funannotate_test.cwl
inputs:
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
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- test
