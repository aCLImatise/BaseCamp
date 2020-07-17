class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/classifier_samplefile.cwl
inputs:
- id: tax_a_sim
  doc: '- calculate and plot the similarities within taxa'
  type: string
  inputBinding:
    position: 0
- id: train
  doc: '- retrain classifier'
  type: string
  inputBinding:
    position: 1
- id: version
  doc: '- taxonomy versions of the pre-compiled training sets'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- classifier
- samplefile
