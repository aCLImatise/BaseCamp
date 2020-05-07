class: CommandLineTool
id: segtools_html_report.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: segmentation
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: clobber
  doc: Overwrite any existing output files.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: mnemonic_file
  doc: If specified, this mnemonic mapping will be included in the report (this should
    be the same mnemonic file used by the individual modules).
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: layered_bed
  doc: If specified, this layered BED file will be linked into the the HTML document
    (assumed to be the same data as in SEGMENTATION)
  type: File
  inputBinding:
    prefix: --layered-bed
- id: big_bed
  doc: If specified, this bigBed file will be linked into the the HTML document and
    a UCSC genome brower link will be generated for it (assumed to be the same data
    as in SEGMENTATION)
  type: File
  inputBinding:
    prefix: --big-bed
- id: results_dir
  doc: 'This should be the directory containing all the module output directories
    (`ls` should return things like "length_distribution/", etc) [default: .]'
  type: string
  inputBinding:
    prefix: --results-dir
- id: outfile
  doc: 'HTML report file (must be in current directory or the links will break [default:
    index.html]'
  type: File
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-html-report
