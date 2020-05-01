#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fastq_deinterleave_bash.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fastq_deinterleave_bash.pl
inputs:
- doc: 'STRING: Input fastq file that will be read.'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'STRING: Suffix to add to the output file 1. By default 1'
  id: output_suffix_1
  inputBinding:
    prefix: --output_suffix1
  type: boolean
- doc: 'STRING: Suffix to add to the output file 2. By default 2.'
  id: output_suffix_2
  inputBinding:
    prefix: --output_suffix2
  type: boolean
- doc: 'Bolean: The output will be compressed using pigz.'
  id: gzip
  inputBinding:
    prefix: --gzip
  type: string
- doc: 'Integer: The number of thread used when running pigz.'
  id: thread
  inputBinding:
    prefix: --thread
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
