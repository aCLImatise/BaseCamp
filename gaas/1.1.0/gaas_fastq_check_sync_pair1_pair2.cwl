#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fastq_check_sync_pair1_pair2.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fastq_check_sync_pair1_pair2.pl
inputs:
- doc: 'STRING: Input fastq file that will be read.'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: BOLEAN - In complete mode, the script doesn't stop at the first synchronization
    problem, but will read the whole file and report the number of de-synchronization
    found.
  id: complete
  inputBinding:
    prefix: --complete
  type: string
- doc: Integer - Allow to check just a subsample of the reads. So, define here the
    number of read to check.
  id: nb
  inputBinding:
    prefix: --nb
  type: boolean
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
