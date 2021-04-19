class: CommandLineTool
id: FEELnc_classifier.pl.cwl
inputs:
- id: in_biotype
  doc: Print the biotype of each transcripts in the output
  type: boolean?
  inputBinding:
    prefix: --biotype
- id: in_log
  doc: Specify the name for the log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_man
  doc: Open man page
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_verbosity
  doc: Level of verbosity
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_l_ncrna
  doc: Specify the lncRNA GTF file
  type: File?
  inputBinding:
    prefix: --lncrna
- id: in_mrna
  doc: Specify the annotation GTF file (file of protein coding annotation)
  type: File?
  inputBinding:
    prefix: --mrna
- id: in_window
  doc: Size of the window around the lncRNA to compute interactions/classification
    [default 10000]
  type: long?
  inputBinding:
    prefix: --window
- id: in_max_window
  doc: Maximal size of the window during the expansion process [default 10000]
  type: long?
  inputBinding:
    prefix: --maxwindow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- FEELnc_classifier.pl
