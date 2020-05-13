class: CommandLineTool
id: gaas_fastq_check_sync_pair1_pair2.pl.cwl
inputs:
- id: input
  doc: 'STRING: Input fastq file that will be read.'
  type: string
  inputBinding:
    prefix: --input
- id: complete
  doc: BOLEAN - In complete mode, the script doesn't stop at the first synchronization
    problem, but will read the whole file and report the number of de-synchronization
    found.
  type: string
  inputBinding:
    prefix: --complete
- id: nb
  doc: Integer - Allow to check just a subsample of the reads. So, define here the
    number of read to check.
  type: boolean
  inputBinding:
    prefix: --nb
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fastq_check_sync_pair1_pair2.pl
