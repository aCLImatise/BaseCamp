class: CommandLineTool
id: pipits_retrain_rdp.cwl
inputs:
- id: in_rdp_classifier_file
  doc: '[REQUIRED] RDP Classifier .jar file'
  type: File?
  inputBinding:
    prefix: -j
- id: in_unite_training_data_fasta
  doc: "[REQUIRED] UNITE training data - FASTA sequences downloaded\nfrom http://sourceforge.net/projects/rdp-\n\
    classifier/files/RDP_Classifier_TrainingData"
  type: string?
  inputBinding:
    prefix: -f
- id: in_unite_training_data_taxonomy
  doc: "[REQUIRED] UNITE training data - taxonomy file downloaded\nfrom http://sourceforge.net/projects/rdp-\n\
    classifier/files/RDP_Classifier_TrainingData"
  type: File?
  inputBinding:
    prefix: -t
- id: in_output_directory_where
  doc: "Output directory where files and settings for retrained\nparameters are stored.\n"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_re_trains
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rdp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_classifier
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_where
  doc: "Output directory where files and settings for retrained\nparameters are stored.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_where)
hints: []
cwlVersion: v1.1
baseCommand:
- pipits_retrain_rdp
