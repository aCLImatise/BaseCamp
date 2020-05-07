class: CommandLineTool
id: hifive_hic_data.cwl
inputs:
- id: fend
  doc: The file name of an appropriate HiFive Fend file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The name of the file to write HiFive HiCData to.
  type: string
  inputBinding:
    position: 1
- id: s
  doc: BAM, --bam BAM BAM A pair of BAM read end files from a single sequencing run.
    For multiple runs, this option can be passed multiple times.
  type: string
  inputBinding:
    prefix: -S
- id: raw
  doc: A tab-separated text file containing pairs of read ends (chr1 pos1 strand1
    chr2 pos2 strand2), one per line. For multiple files, this option can be passed
    multiple times.
  type: string
  inputBinding:
    prefix: --raw
- id: mat
  doc: A HiCPipe-style tabular MAT file containing fend pair counts.
  type: string
  inputBinding:
    prefix: --mat
- id: matrix
  doc: Binned matrix containing summed fend interactions.
  type: string
  inputBinding:
    prefix: --matrix
- id: insert
  doc: 'The maximum allowable distance sum between both fend ends and cutsites. [default:
    500]'
  type: string
  inputBinding:
    prefix: --insert
- id: skip_duplicate_filtering
  doc: 'Skip filtering of PCR duplicates. [default: False]'
  type: boolean
  inputBinding:
    prefix: --skip-duplicate-filtering
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-data
