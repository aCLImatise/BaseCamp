class: CommandLineTool
id: TQS.py.cwl
inputs:
- id: in_sequence
  doc: "=SEQFILE\nIllumina sequence file - Output format from the 1G\nGenome Analyzer\
    \ (_seq.txt):\n7       1       255     669\nAACCCCCACTCCTACAACGCCATCATTCCCCTCGAC"
  type: File
  inputBinding:
    prefix: --sequence
- id: in_qual
  doc: "=QUALFILE\nA prb file containing all the Illumina intensities, as\noutputted\
    \ by the 1G Genome Analyzer (_prb.txt)"
  type: File
  inputBinding:
    prefix: --qual
- id: in_length
  doc: "Length of sequence reads (i.e. Number of sequencing\ncycles, default=36)"
  type: long
  inputBinding:
    prefix: --length
- id: in_threshold
  doc: Base intensity threshold value (-40 to 40, default=5)
  type: long
  inputBinding:
    prefix: --threshold
- id: in_difference
  doc: "Base intensity difference between top intensity and\nsecond best (1 to 80,\
    \ default=5)"
  type: long
  inputBinding:
    prefix: --difference
- id: in_consec
  doc: "Minimum number of consecutive bases passing threshold\nvalues (default=20)"
  type: long
  inputBinding:
    prefix: --consec
- id: in_verbose
  doc: Runs in Verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sequence
  doc: "=SEQFILE\nIllumina sequence file - Output format from the 1G\nGenome Analyzer\
    \ (_seq.txt):\n7       1       255     669\nAACCCCCACTCCTACAACGCCATCATTCCCCTCGAC"
  type: File
  outputBinding:
    glob: $(inputs.in_sequence)
cwlVersion: v1.1
baseCommand:
- TQS.py
