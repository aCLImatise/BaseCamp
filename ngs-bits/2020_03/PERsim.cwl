#!/usr/bin/env cwl-runner

baseCommand:
- PERsim
class: CommandLineTool
cwlVersion: v1.0
id: persim
inputs:
- doc: is modelled using a gaussian distribution.
  id: insert
  inputBinding:
    prefix: '- insert'
  type: long
- doc: the sequencing adapters is modelled.
  id: read_through
  inputBinding:
    prefix: '- read-through'
  type: long
- doc: are modelled using a simple uniform distribution.
  id: sequencing
  inputBinding:
    prefix: '- sequencing'
  type: string
- doc: Target region BED file.
  id: roi
  inputBinding:
    prefix: -roi
  type: File
- doc: Number of read pairs to generate.
  id: count
  inputBinding:
    prefix: -count
  type: long
- doc: Forward reads output file in .FASTQ.GZ format.
  id: out1
  inputBinding:
    prefix: -out1
  type: File
- doc: Reverse reads output file in .FASTQ.GZ format.
  id: out2
  inputBinding:
    prefix: -out2
  type: File
- doc: "Read length for forward/reverse reads. Default value: '100'"
  id: length
  inputBinding:
    prefix: -length
  type: long
- doc: "Library insert size mean value. Default value: '200'"
  id: ins_mean
  inputBinding:
    prefix: -ins_mean
  type: long
- doc: "Library insert size mean standard deviation. Default value: '70'"
  id: ins_stdev
  inputBinding:
    prefix: -ins_stdev
  type: long
- doc: "Base error probability (uniform distribution). Default value: '0.01'"
  id: error
  inputBinding:
    prefix: -error
  type: double
- doc: "Maximum number of N bases (from reference genome). Default value: '5'"
  id: max_n
  inputBinding:
    prefix: -max_n
  type: long
- doc: "Forward read sequencing adapter sequence (for read-through). Default value:\
    \ 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCACGAGTTA'"
  id: a1
  inputBinding:
    prefix: -a1
  type: string
- doc: "Reverse read sequencing adapter sequence (for read-through). Default value:\
    \ 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTC'"
  id: a2
  inputBinding:
    prefix: -a2
  type: string
- doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  id: ref
  inputBinding:
    prefix: -ref
  type: File
- doc: "Enable verbose debug output. Default value: 'false'"
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
