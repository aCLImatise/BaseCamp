#!/usr/bin/env cwl-runner

baseCommand:
- SeqPurge
class: CommandLineTool
cwlVersion: v1.0
id: seqpurge
inputs:
- doc: Forward input gzipped FASTQ file(s).
  id: in1
  inputBinding:
    prefix: -in1
  type: File
- doc: Reverse input gzipped FASTQ file(s).
  id: in2
  inputBinding:
    prefix: -in2
  type: File
- doc: Forward output gzipped FASTQ file.
  id: out1
  inputBinding:
    prefix: -out1
  type: File
- doc: Reverse output gzipped FASTQ file.
  id: out2
  inputBinding:
    prefix: -out2
  type: File
- doc: "Forward adapter sequence (at least 15 bases). Default value: 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCA'"
  id: a1
  inputBinding:
    prefix: -a1
  type: string
- doc: "Reverse adapter sequence (at least 15 bases). Default value: 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'"
  id: a2
  inputBinding:
    prefix: -a2
  type: string
- doc: "Minimum percentage of matching bases for sequence/adapter matches. Default\
    \ value: '80'"
  id: match_perc
  inputBinding:
    prefix: -match_perc
  type: double
- doc: "Maximum error probability of insert and adapter matches. Default value: '1e-06'"
  id: mep
  inputBinding:
    prefix: -mep
  type: double
- doc: "Quality trimming cutoff for trimming from the end of reads using a sliding\
    \ window approach. Set to 0 to disable. Default value: '15'"
  id: q_cut
  inputBinding:
    prefix: -qcut
  type: long
- doc: "Quality trimming window size. Default value: '5'"
  id: q_win
  inputBinding:
    prefix: -qwin
  type: long
- doc: "Quality trimming FASTQ score offset. Default value: '33'"
  id: q_off
  inputBinding:
    prefix: -qoff
  type: long
- doc: "Number of subsequent Ns to trimmed using a sliding window approach from the\
    \ front of reads. Set to 0 to disable. Default value: '7'"
  id: n_cut
  inputBinding:
    prefix: -ncut
  type: long
- doc: "Minimum read length after adapter trimming. Shorter reads are discarded. Default\
    \ value: '30'"
  id: min_len
  inputBinding:
    prefix: -min_len
  type: long
- doc: "The number of threads used for trimming (two additional threads are used for\
    \ reading and writing). Default value: '1'"
  id: threads
  inputBinding:
    prefix: -threads
  type: long
- doc: "Name prefix of singleton read output files (if only one read of a pair is\
    \ discarded). Default value: ''"
  id: out3
  inputBinding:
    prefix: -out3
  type: File
- doc: "Write summary/progress to this file instead of STDOUT. Default value: ''"
  id: summary
  inputBinding:
    prefix: -summary
  type: File
- doc: "If set, a read QC file in qcML format is created (just like ReadQC). Default\
    \ value: ''"
  id: qc
  inputBinding:
    prefix: -qc
  type: File
- doc: "Maximum number of reads that may be pre-fetched into memory to speed up trimming.\
    \ Default value: '1000'"
  id: prefetch
  inputBinding:
    prefix: -prefetch
  type: long
- doc: "Enable error-correction of adapter-trimmed reads (only those with insert match).\
    \ Default value: 'false'"
  id: ec
  inputBinding:
    prefix: -ec
  type: boolean
- doc: "Enables debug output (use only with one thread). Default value: 'false'"
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: "Enables progress output at the given interval in milliseconds (disabled by\
    \ default). Default value: '-1'"
  id: progress
  inputBinding:
    prefix: -progress
  type: long
- doc: "gzip compression level from 1 (fastest) to 9 (best compression). Default value:\
    \ '1'"
  id: compression_level
  inputBinding:
    prefix: -compression_level
  type: long
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
