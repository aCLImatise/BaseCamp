class: CommandLineTool
id: ../../../gaas_fastq_check_sync_pair1_pair2.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fastq_check_sync_pair1_pair2.pl
