class: CommandLineTool
id: ../../../hicQuickQC.cwl
inputs:
- id: in_restriction_cut_file
  doc: file [BED file ...]
  type: File
  inputBinding:
    prefix: --restrictionCutFile
- id: in_restriction_sequence
  doc: "Sequence of the restriction site, if multiple are\nused, please list them\
    \ space seperated. If a dangling\nsequence is listed at the same time, please\
    \ preserve\nthe same order. (default: None)"
  type: string[]
  inputBinding:
    prefix: --restrictionSequence
- id: in_sam_files
  doc: "sam files two sam files, -s two sam files two sam files\nThe two PE alignment\
    \ sam files to process. (default:\nNone)"
  type: string
  inputBinding:
    prefix: --samFiles
- id: in_qc_folder
  doc: "Path of folder to save the quality control data of the\nmatrix. The log files\
    \ produced this way can be loaded\ninto `hicQC` in order to compare the quality\
    \ of\nmultiple Hi-C libraries. (default: None)"
  type: Directory
  inputBinding:
    prefix: --QCfolder
- id: in_lines
  doc: "Number of lines to consider for the QC test run.\n(default: 1000000)"
  type: long
  inputBinding:
    prefix: --lines
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicQuickQC
