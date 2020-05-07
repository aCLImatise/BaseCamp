class: CommandLineTool
id: SeqPurge.cwl
inputs:
- id: in1
  doc: Forward input gzipped FASTQ file(s).
  type: File
  inputBinding:
    prefix: -in1
- id: in2
  doc: Reverse input gzipped FASTQ file(s).
  type: File
  inputBinding:
    prefix: -in2
- id: out1
  doc: Forward output gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -out1
- id: out2
  doc: Reverse output gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -out2
- id: a1
  doc: "Forward adapter sequence (at least 15 bases). Default value: 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCA'"
  type: string
  inputBinding:
    prefix: -a1
- id: a2
  doc: "Reverse adapter sequence (at least 15 bases). Default value: 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'"
  type: string
  inputBinding:
    prefix: -a2
- id: match_perc
  doc: "Minimum percentage of matching bases for sequence/adapter matches. Default\
    \ value: '80'"
  type: double
  inputBinding:
    prefix: -match_perc
- id: mep
  doc: "Maximum error probability of insert and adapter matches. Default value: '1e-06'"
  type: double
  inputBinding:
    prefix: -mep
- id: q_cut
  doc: "Quality trimming cutoff for trimming from the end of reads using a sliding\
    \ window approach. Set to 0 to disable. Default value: '15'"
  type: long
  inputBinding:
    prefix: -qcut
- id: q_win
  doc: "Quality trimming window size. Default value: '5'"
  type: long
  inputBinding:
    prefix: -qwin
- id: q_off
  doc: "Quality trimming FASTQ score offset. Default value: '33'"
  type: long
  inputBinding:
    prefix: -qoff
- id: n_cut
  doc: "Number of subsequent Ns to trimmed using a sliding window approach from the\
    \ front of reads. Set to 0 to disable. Default value: '7'"
  type: long
  inputBinding:
    prefix: -ncut
- id: min_len
  doc: "Minimum read length after adapter trimming. Shorter reads are discarded. Default\
    \ value: '30'"
  type: long
  inputBinding:
    prefix: -min_len
- id: threads
  doc: "The number of threads used for trimming (two additional threads are used for\
    \ reading and writing). Default value: '1'"
  type: long
  inputBinding:
    prefix: -threads
- id: out3
  doc: "Name prefix of singleton read output files (if only one read of a pair is\
    \ discarded). Default value: ''"
  type: File
  inputBinding:
    prefix: -out3
- id: summary
  doc: "Write summary/progress to this file instead of STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -summary
- id: qc
  doc: "If set, a read QC file in qcML format is created (just like ReadQC). Default\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -qc
- id: prefetch
  doc: "Maximum number of reads that may be pre-fetched into memory to speed up trimming.\
    \ Default value: '1000'"
  type: long
  inputBinding:
    prefix: -prefetch
- id: ec
  doc: "Enable error-correction of adapter-trimmed reads (only those with insert match).\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -ec
- id: debug
  doc: "Enables debug output (use only with one thread). Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
- id: progress
  doc: "Enables progress output at the given interval in milliseconds (disabled by\
    \ default). Default value: '-1'"
  type: long
  inputBinding:
    prefix: -progress
- id: compression_level
  doc: "gzip compression level from 1 (fastest) to 9 (best compression). Default value:\
    \ '1'"
  type: long
  inputBinding:
    prefix: -compression_level
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- SeqPurge
