class: CommandLineTool
id: hicQC.cwl
inputs:
- id: log_files
  doc: Path to the log files to be processed
  type: string[]
  inputBinding:
    prefix: --logfiles
- id: labels
  doc: 'Label to assign to each log file. Each label should be separated by a space.
    Quote labels that contain spaces: E.g. --labels label1 "labels 2"'
  type: string[]
  inputBinding:
    prefix: --labels
- id: output_folder
  doc: 'Several files with be saved under this folder: A table containing the results
    and a html file with several images.'
  type: string
  inputBinding:
    prefix: --outputFolder
- id: dpi
  doc: Image resolution. By default high resolution png images with a 200 dpi are
    created.
  type: string
  inputBinding:
    prefix: --dpi
outputs: []
cwlVersion: v1.1
baseCommand:
- hicQC
