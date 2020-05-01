#!/usr/bin/env cwl-runner

baseCommand:
- hicQC
class: CommandLineTool
cwlVersion: v1.0
id: hicqc
inputs:
- doc: Path to the log files to be processed
  id: log_files
  inputBinding:
    prefix: --logfiles
  type:
    items: string
    type: array
- doc: 'Label to assign to each log file. Each label should be separated by a space.
    Quote labels that contain spaces: E.g. --labels label1 "labels 2"'
  id: labels
  inputBinding:
    prefix: --labels
  type:
    items: string
    type: array
- doc: 'Several files with be saved under this folder: A table containing the results
    and a html file with several images.'
  id: output_folder
  inputBinding:
    prefix: --outputFolder
  type: string
- doc: Image resolution. By default high resolution png images with a 200 dpi are
    created.
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
