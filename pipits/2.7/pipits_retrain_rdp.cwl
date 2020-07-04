class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pipits_retrain_rdp.cwl
inputs:
- id: rdp_classifier_file
  doc: '[REQUIRED] RDP Classifier .jar file'
  type: string
  inputBinding:
    prefix: -j
- id: unite_training_data_sequences
  doc: '[REQUIRED] UNITE training data - FASTA sequences downloaded from http://sourceforge.net/projects/rdp-
    classifier/files/RDP_Classifier_TrainingData'
  type: string
  inputBinding:
    prefix: -f
- id: unite_training_data_taxonomy
  doc: '[REQUIRED] UNITE training data - taxonomy file downloaded from http://sourceforge.net/projects/rdp-
    classifier/files/RDP_Classifier_TrainingData'
  type: string
  inputBinding:
    prefix: -t
- id: output_directory_stored
  doc: Output directory where files and settings for retrained parameters are stored.
  type: string
  inputBinding:
    prefix: -o
- id: re_trains
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rdp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: classifier
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_retrain_rdp
