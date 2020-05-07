class: CommandLineTool
id: medpy_intensity_range_standardization.py.cwl
inputs:
- id: images
  doc: The images used for training (in the learning case) or to transform (in the
    transformation case)
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: --debug
- id: force
  doc: Overwrite existing files (both model and images)
  type: boolean
  inputBinding:
    prefix: --force
- id: load_model
  doc: Location of the pickled intensity range model to load. Activated application
    mode.
  type: string
  inputBinding:
    prefix: --load-model
- id: save_model
  doc: Save the trained model under this name as a pickled object (should end in .pkl).
    Activates training mode.
  type: string
  inputBinding:
    prefix: --save-model
- id: cut_off_p
  doc: Colon-separated lower and upper cut-off percentile values to exclude intensity
    outliers during the model training.
  type: string
  inputBinding:
    prefix: --cutoffp
- id: landmark_p
  doc: The landmark percentiles, based on which to train the model. Can be L2, L3,
    L4 or a colon-separated, ordered list of percentiles.
  type: string
  inputBinding:
    prefix: --landmarkp
- id: std_space
  doc: Two colon-separated intensity values to roughly define the average intensity
    space to learn. In most cases should be left set to 'auto'
  type: string
  inputBinding:
    prefix: --stdspace
- id: save_images
  doc: Save the transformed images under this location. Required for the application
    mode, optional for the learning mode.
  type: string
  inputBinding:
    prefix: --save-images
- id: threshold
  doc: All voxel with an intensity > threshold are considered as foreground. Supply
    either this or a mask for each image.
  type: string
  inputBinding:
    prefix: --threshold
- id: masks
  doc: A number of binary foreground mask, one for each image. Alternative to supplying
    a threshold. Overrides the threshold parameter if supplied.
  type: string[]
  inputBinding:
    prefix: --masks
- id: ignore
  doc: Ignore possible loss of information during the intensity transformation. Should
    only be used when you know what you are doing.
  type: boolean
  inputBinding:
    prefix: --ignore
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_intensity_range_standardization.py
