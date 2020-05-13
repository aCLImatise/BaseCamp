class: CommandLineTool
id: FEELnc_classifier.pl.cwl
inputs:
- id: biotype
  doc: Print the biotype of each transcripts in the output
  type: boolean
  inputBinding:
    prefix: --biotype
- id: log
  doc: Specify the name for the log file
  type: File
  inputBinding:
    prefix: --log
- id: man
  doc: Open man page
  type: boolean
  inputBinding:
    prefix: --man
- id: verbosity
  doc: Level of verbosity
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: l_ncrna
  doc: Specify the lncRNA GTF file
  type: File
  inputBinding:
    prefix: --lncrna
- id: mrna
  doc: Specify the annotation GTF file (file of protein coding annotation)
  type: File
  inputBinding:
    prefix: --mrna
- id: window
  doc: =10000             Size of the window around the lncRNA to compute interactions/classification
    [default 10000]
  type: boolean
  inputBinding:
    prefix: --window
- id: max_window
  doc: =100000         Maximal size of the window during the expansion process [default
    10000]
  type: boolean
  inputBinding:
    prefix: --maxwindow
outputs: []
cwlVersion: v1.1
baseCommand:
- FEELnc_classifier.pl
