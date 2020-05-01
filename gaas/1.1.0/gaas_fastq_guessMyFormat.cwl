#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fastq_guessMyFormat.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fastq_guessmyformat.pl
inputs:
- doc: 'STRING: Input fastq file that will be read.'
  id: fast_q
  inputBinding:
    prefix: --fastq
  type: string
- doc: Advanced mode. Can be used to find exactly which scoring system it is.
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Set the max search time in seconds to be used when using -a. Default is 60.
  id: t
  inputBinding:
    prefix: -t
  type: boolean
