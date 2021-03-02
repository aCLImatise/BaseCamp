class: CommandLineTool
id: TQSfastq.py.cwl
inputs:
- id: in_fast_q
  doc: "=FASTQFILE\nfastq (fq) file - standard (ASCII+33) encoded PHRED\nquality scores\
    \ / illumina (ASCII+64) encoded PHRED\nquality scores"
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_phred
  doc: "threshold=THRESHOLD\nBase intensity threshold value (Phred quality scores,\n\
    default=10)"
  type: long?
  inputBinding:
    prefix: --Phred
- id: in_consec
  doc: "Minimum number of consecutive bases passing threshold\nvalues (default=20)"
  type: long?
  inputBinding:
    prefix: --consec
- id: in_ascii
  doc: "type: 33 or 64=ENCODING\nType of ASCII encoding: 33 (standard) or 64 (illumina)\n\
    (default=33)"
  type: long?
  inputBinding:
    prefix: --ASCII
- id: in_verbose
  doc: Runs in Verbose mode.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- TQSfastq.py
