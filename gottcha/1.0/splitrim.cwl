#!/usr/bin/env cwl-runner

baseCommand:
- splitrim
class: CommandLineTool
cwlVersion: v1.0
id: splitrim
inputs:
- doc: ''
  id: input
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: others
  inputBinding:
    position: 2
  type: string
- doc: =        string   Name of the FASTQ file containing all the single-end reads
  id: in_file
  inputBinding:
    prefix: --inFile
  type: boolean
- doc: '=          int      Minimum length for a trimmed read to be considered valid
    [default: 0]'
  id: min_l
  inputBinding:
    prefix: --minL
  type: boolean
- doc: 'bool     When --fixL is specified and a read length is not a multiple of "fixL",
    this option will append any remaining bases (up to the maximum fixL-1 bases) to
    the last fragment of length "fixL" [default: false]'
  id: recycle
  inputBinding:
    prefix: --recycle
  type: boolean
- doc: '=         int      ASCII encoding (33 or 64) [default: 33]'
  id: ascii
  inputBinding:
    prefix: --ascii
  type: boolean
- doc: '=          int      Minimum quality for a read to be considered valid (0-41)
    [default: 10]'
  id: min_q
  inputBinding:
    prefix: --minQ
  type: boolean
- doc: =   uint     <disabled> no. of threads to use [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: =       string   Location output files will be placed
  id: out_path
  inputBinding:
    prefix: --outPath
  type: boolean
- doc: =        string   Prefix of output files
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
- doc: '=   int      ASCII encoding of the output (33 or 64) [default: mirrors input]'
  id: out_encoding
  inputBinding:
    prefix: --outEncoding
  type: boolean
- doc: '=         string   Basic read statistics output [default: uses basename from
    --inFile]'
  id: stats
  inputBinding:
    prefix: --stats
  type: boolean
- doc: '=         string   Post-trim read length histogram [default: uses basename
    from --inFile]'
  id: histo
  inputBinding:
    prefix: --histo
  type: boolean
- doc: 'bool     Sort read length frequency table in ascending order [default: unordered]'
  id: sort_lena_sc
  inputBinding:
    prefix: --sortLenAsc
  type: boolean
- doc: 'bool     Sort read length frequency table in descending order [default: unordered]'
  id: sort_len_desc
  inputBinding:
    prefix: --sortLenDesc
  type: boolean
- doc: bool     verbosity level
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
