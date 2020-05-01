#!/usr/bin/env cwl-runner

baseCommand:
- FEELnc_classifier.pl
class: CommandLineTool
cwlVersion: v1.0
id: feelnc_classifier.pl
inputs:
- doc: Print the biotype of each transcripts in the output
  id: biotype
  inputBinding:
    prefix: --biotype
  type: boolean
- doc: Specify the name for the log file
  id: log
  inputBinding:
    prefix: --log
  type: File
- doc: Open man page
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Level of verbosity
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: boolean
- doc: Specify the lncRNA GTF file
  id: l_ncrna
  inputBinding:
    prefix: --lncrna
  type: File
- doc: Specify the annotation GTF file (file of protein coding annotation)
  id: mrna
  inputBinding:
    prefix: --mrna
  type: File
- doc: =10000             Size of the window around the lncRNA to compute interactions/classification
    [default 10000]
  id: window
  inputBinding:
    prefix: --window
  type: boolean
- doc: =100000         Maximal size of the window during the expansion process [default
    10000]
  id: max_window
  inputBinding:
    prefix: --maxwindow
  type: boolean
