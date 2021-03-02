class: CommandLineTool
id: segtools_html_report.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean?
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_mnemonic_file
  doc: "If specified, this mnemonic mapping will be included\nin the report (this\
    \ should be the same mnemonic file\nused by the individual modules)."
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_layered_bed
  doc: "If specified, this layered BED file will be linked\ninto the the HTML document\
    \ (assumed to be the same\ndata as in SEGMENTATION)"
  type: File?
  inputBinding:
    prefix: --layered-bed
- id: in_big_bed
  doc: "If specified, this bigBed file will be linked into the\nthe HTML document\
    \ and a UCSC genome brower link will\nbe generated for it (assumed to be the same\
    \ data as in\nSEGMENTATION)"
  type: File?
  inputBinding:
    prefix: --big-bed
- id: in_results_dir
  doc: "This should be the directory containing all the module\noutput directories\
    \ (`ls` should return things like\n\"length_distribution/\", etc) [default: .]"
  type: Directory?
  inputBinding:
    prefix: --results-dir
- id: in_outfile
  doc: "HTML report file (must be in current directory or the\nlinks will break [default:\
    \ index.html]\n"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_segmentation
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_results_dir
  doc: "This should be the directory containing all the module\noutput directories\
    \ (`ls` should return things like\n\"length_distribution/\", etc) [default: .]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_results_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-html-report
