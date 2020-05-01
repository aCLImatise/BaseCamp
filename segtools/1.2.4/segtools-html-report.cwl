#!/usr/bin/env cwl-runner

baseCommand:
- segtools-html-report
class: CommandLineTool
cwlVersion: v1.0
id: segtools-html-report
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 1
  type: string
- doc: Overwrite any existing output files.
  id: clobber
  inputBinding:
    prefix: --clobber
  type: boolean
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: If specified, this mnemonic mapping will be included in the report (this should
    be the same mnemonic file used by the individual modules).
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: If specified, this layered BED file will be linked into the the HTML document
    (assumed to be the same data as in SEGMENTATION)
  id: layered_bed
  inputBinding:
    prefix: --layered-bed
  type: File
- doc: If specified, this bigBed file will be linked into the the HTML document and
    a UCSC genome brower link will be generated for it (assumed to be the same data
    as in SEGMENTATION)
  id: big_bed
  inputBinding:
    prefix: --big-bed
  type: File
- doc: 'This should be the directory containing all the module output directories
    (`ls` should return things like "length_distribution/", etc) [default: .]'
  id: results_dir
  inputBinding:
    prefix: --results-dir
  type: string
- doc: 'HTML report file (must be in current directory or the links will break [default:
    index.html]'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: File
