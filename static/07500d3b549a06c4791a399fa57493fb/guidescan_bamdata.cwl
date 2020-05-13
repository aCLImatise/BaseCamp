class: CommandLineTool
id: guidescan_bamdata.cwl
inputs:
- id: n
  doc: 'project name, load previously saved arguments and save additional output (default:
    myguides)'
  type: string
  inputBinding:
    prefix: -n
- id: label
  doc: 'use in file name of output database for this run (default: test)'
  type: string
  inputBinding:
    prefix: --label
- id: g
  doc: 'name of file with guideRNAs for which to compute BAM database; may be gzipped
    (.gz); if not provided, use all candidate guideRNAs found in the project (default:
    )'
  type: string
  inputBinding:
    prefix: -g
- id: d
  doc: 'maximum Hamming distance to consider from guideRNA to its off-target; off-target
    is an alternative occurrence (with any PAM) of this guideRNA in the genome at
    Hamming distance at most this number (including PAM); use -1 for omitting any
    off-target info in resulting BAM (works much faster) (default: 3)'
  type: string
  inputBinding:
    prefix: -d
- id: max_off_count
  doc: 'maximum number of off-targets to store for a guideRNA in a resulting BAM library;
    ignore if OFFDIST is -1 (default: 1000)'
  type: long
  inputBinding:
    prefix: --maxoffcount
- id: t
  doc: 'how many threads to use; do not specify more than you have on your system;
    currently not implemented (default: 1)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- guidescan_bamdata
