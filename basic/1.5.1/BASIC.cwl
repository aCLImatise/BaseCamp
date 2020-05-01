#!/usr/bin/env cwl-runner

baseCommand:
- BASIC.py
class: CommandLineTool
cwlVersion: v1.0
id: basic.py
inputs:
- doc: 'Type of receptor. Choices: "BCR" or "TCR" (default: BCR)'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: 'Launch p > 2 threads that will run on separate processors/cores (default:
    2)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'Name of output file. Note: a ".fasta" extension will be added (default: result.fasta)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'Single end FASTQ file (optionally gzipped). (example: se.fastq)'
  id: se
  inputBinding:
    prefix: -SE
  type: string
- doc: 'Paired end (left) FASTQ file (optionally gzipped). -PE_2 is required and pairs
    must match order. (example: pe_1.fastq)'
  id: pe_1
  inputBinding:
    prefix: -PE_1
  type: string
- doc: 'Paired end (right) FASTQ file (optionally gzipped). (example: pe_2.fastq)'
  id: pe_2
  inputBinding:
    prefix: -PE_2
  type: string
- doc: 'Options: "human" or "mouse" (default: human). Note: other species are possible
    by adding the appropriate Bowtie2 indices and following the existing db/ directory
    structure'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Absolute path to bowtie2 executable or directory containing it
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: 'Path to directory for writing intermediate files. (default: current working
    directory)'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: 'Output directory (default: current working directory)'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Allow for partial reconstruction i.e. do not terminate if one or both chains
    do not assemble.
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Turns on verbosity for more details.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Path to database directory. Defaults to <path of BASIC.py>/db
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: 'Use the first <int> number of reads of the input. Default: no limit'
  id: subsample
  inputBinding:
    prefix: --subsample
  type: string
