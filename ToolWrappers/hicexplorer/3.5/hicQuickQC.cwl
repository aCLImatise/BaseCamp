class: CommandLineTool
id: hicQuickQC.cwl
inputs:
- id: in_restriction_cut_file
  doc: "file [BED file ...]\n--restrictionSequence RESTRICTIONSEQUENCE\n[RESTRICTIONSEQUENCE\
    \ ...] --danglingSequence\nDANGLINGSEQUENCE [DANGLINGSEQUENCE ...] [--lines LINES]\n\
    [--help] [--version]"
  type: File
  inputBinding:
    prefix: --restrictionCutFile
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
- id: in_restriction_sequence
  doc: "Sequence of the restriction site, if multiple are\nused, please list them\
    \ space seperated. If a dangling\nsequence is listed at the same time, please\
    \ preserve\nthe same order. (default: None)"
  type: string[]
  inputBinding:
    prefix: --restrictionSequence
- id: in_dangling_sequence
  doc: "Sequence left by the restriction enzyme after cutting,\nif multiple are used,\
    \ please list them space seperated\nand preserve the order. Each restriction enzyme\n\
    recognizes a different DNA sequence and, after\ncutting, they leave behind a specific\
    \ \"sticky\" end or\ndangling end sequence. For example, for HindIII the\nrestriction\
    \ site is AAGCTT and the dangling end is\nAGCT. For DpnII, the restriction site\
    \ and dangling end\nsequence are the same: GATC. This information is\neasily found\
    \ on the description of the restriction\nenzyme. The dangling sequence is used\
    \ to classify and\nreport reads whose 5' end starts with such sequence as\ndangling-end\
    \ reads. A significant portion of dangling-\nend reads in a sample are indicative\
    \ of a problem with\nthe re-ligation step of the protocol. (default: None)"
  type: string[]
  inputBinding:
    prefix: --danglingSequence
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
