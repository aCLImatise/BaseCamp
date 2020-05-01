#!/usr/bin/env cwl-runner

baseCommand:
- hicQuickQC
class: CommandLineTool
cwlVersion: v1.0
id: hicquickqc
inputs:
- doc: 'sam files two sam files, -s two sam files two sam files The two PE alignment
    sam files to process. (default: None)'
  id: sam_files
  inputBinding:
    prefix: --samFiles
  type: string
- doc: 'Path of folder to save the quality control data of the matrix. The log files
    produced this way can be loaded into `hicQC` in order to compare the quality of
    multiple Hi-C libraries. (default: None)'
  id: qc_folder
  inputBinding:
    prefix: --QCfolder
  type: Directory
- doc: 'Sequence of the restriction site. It is highly recommended to set this parameter
    to get a good quality report. (default: None)'
  id: restriction_sequence
  inputBinding:
    prefix: --restrictionSequence
  type: string
- doc: "Sequence left by the restriction enzyme after cutting. Each restriction enzyme\
    \ recognizes a different DNA sequence and, after cutting, they leave behind a\
    \ specific \"sticky\" end or dangling end sequence. For example, for HindIII the\
    \ restriction site is AAGCTT and the dangling end is AGCT. For DpnII, the restriction\
    \ site and dangling end sequence are the same: GATC. This information is easily\
    \ found on the description of the restriction enzyme. The dangling sequence is\
    \ used to classify and report reads whose 5' end starts with such sequence as\
    \ dangling-end reads. A significant portion of dangling-end reads in a sample\
    \ are indicative of a problem with the re-ligation step of the protocol. It is\
    \ highly recommended to set this parameter to get a good quality report. (default:\
    \ None)"
  id: dangling_sequence
  inputBinding:
    prefix: --danglingSequence
  type: string
- doc: 'Number of lines to consider for the QC test run. (default: 1000000)'
  id: lines
  inputBinding:
    prefix: --lines
  type: string
