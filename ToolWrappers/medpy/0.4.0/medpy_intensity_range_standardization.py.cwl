class: CommandLineTool
id: medpy_intensity_range_standardization.py.cwl
inputs:
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Display debug information.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_force
  doc: Overwrite existing files (both model and images)
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_load_model
  doc: "Location of the pickled intensity range model to load.\nActivated application\
    \ mode."
  type: string?
  inputBinding:
    prefix: --load-model
- id: in_save_model
  doc: "Save the trained model under this name as a pickled\nobject (should end in\
    \ .pkl). Activates training mode."
  type: string?
  inputBinding:
    prefix: --save-model
- id: in_cut_off_p
  doc: "Colon-separated lower and upper cut-off percentile\nvalues to exclude intensity\
    \ outliers during the model\ntraining."
  type: string?
  inputBinding:
    prefix: --cutoffp
- id: in_landmark_p
  doc: "The landmark percentiles, based on which to train the\nmodel. Can be L2, L3,\
    \ L4 or a colon-separated, ordered\nlist of percentiles."
  type: long?
  inputBinding:
    prefix: --landmarkp
- id: in_std_space
  doc: "Two colon-separated intensity values to roughly define\nthe average intensity\
    \ space to learn. In most cases\nshould be left set to 'auto'"
  type: string?
  inputBinding:
    prefix: --stdspace
- id: in_save_images
  doc: "Save the transformed images under this location.\nRequired for the application\
    \ mode, optional for the\nlearning mode."
  type: string?
  inputBinding:
    prefix: --save-images
- id: in_threshold
  doc: "All voxel with an intensity > threshold are considered\nas foreground. Supply\
    \ either this or a mask for each\nimage."
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_masks
  doc: "A number of binary foreground mask, one for each\nimage. Alternative to supplying\
    \ a threshold. Overrides\nthe threshold parameter if supplied."
  type: string[]
  inputBinding:
    prefix: --masks
- id: in_ignore
  doc: "Ignore possible loss of information during the\nintensity transformation.\
    \ Should only be used when you\nknow what you are doing.\n"
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_images
  doc: "The images used for training (in the learning case) or\nto transform (in the\
    \ transformation case)"
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
- medpy_intensity_range_standardization.py
