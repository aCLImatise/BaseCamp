class: CommandLineTool
id: spectrast_updateiRTs.py.cwl
inputs:
- id: in__autoalign_calculates
  doc: --auto-align  Calculates automatically the alignment models based on the internal
    identifications of the calibration peptides
  type: boolean
  inputBinding:
    prefix: -a
- id: in_irtmodelsfile__irtmodel
  doc: iRT_models_file    --irtmodel    File with the iRT models
  type: boolean
  inputBinding:
    prefix: -i
- id: in_irtpeptidesfile__irtpeptides
  doc: iRT_peptides_file    --irtpeptides File containing the peptides and their iRTs
    to do the linear model alignment.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_timescale_options_minutes
  doc: 'time-scale            Options: minutes, seconds. Default: seconds.'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_spectra_st_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- spectrast_updateiRTs.py
