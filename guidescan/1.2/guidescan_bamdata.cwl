#!/usr/bin/env cwl-runner

baseCommand:
- guidescan_bamdata
class: CommandLineTool
cwlVersion: v1.0
id: guidescan_bamdata
inputs:
- doc: 'project name, load previously saved arguments and save additional output (default:
    myguides)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'use in file name of output database for this run (default: test)'
  id: label
  inputBinding:
    prefix: --label
  type: string
- doc: 'name of file with guideRNAs for which to compute BAM database; may be gzipped
    (.gz); if not provided, use all candidate guideRNAs found in the project (default:
    )'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: 'maximum Hamming distance to consider from guideRNA to its off-target; off-target
    is an alternative occurrence (with any PAM) of this guideRNA in the genome at
    Hamming distance at most this number (including PAM); use -1 for omitting any
    off-target info in resulting BAM (works much faster) (default: 3)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'maximum number of off-targets to store for a guideRNA in a resulting BAM library;
    ignore if OFFDIST is -1 (default: 1000)'
  id: max_off_count
  inputBinding:
    prefix: --maxoffcount
  type: long
- doc: 'how many threads to use; do not specify more than you have on your system;
    currently not implemented (default: 1)'
  id: t
  inputBinding:
    prefix: -t
  type: string
