class: CommandLineTool
id: mi_msi_train_test.cwl
inputs:
- id: in_epochs
  doc: 'Number of epochs to train (default: 40)'
  type: long?
  inputBinding:
    prefix: --epochs
- id: in_lr
  doc: 'Learning rate used in training (default: 0.0001)'
  type: double?
  inputBinding:
    prefix: --lr
- id: in_reg
  doc: 'Weight decay used in training (default: 5e-4)'
  type: double?
  inputBinding:
    prefix: --reg
- id: in_seed
  doc: 'Random Seed (default: 2)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_no_cuda
  doc: "Disables CUDA training for use off GPU, if this is not\nspecified the utility\
    \ will check availability of\ntorch.cuda"
  type: boolean?
  inputBinding:
    prefix: --no-cuda
- id: in_name
  doc: Name of the model,
  type: string?
  inputBinding:
    prefix: --name
- id: in_train_location
  doc: Directory Location for Training Data
  type: Directory?
  inputBinding:
    prefix: --train-location
- id: in_test_location
  doc: Directory Location for Testing Data
  type: Directory?
  inputBinding:
    prefix: --test-location
- id: in_save
  doc: Save the model weights to disk after training
  type: string?
  inputBinding:
    prefix: --save
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- mi_msi_train_test
