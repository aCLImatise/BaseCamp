class: CommandLineTool
id: nucmer_multi.pl.cwl
inputs:
- id: f
  doc: input fasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: n
  doc: path to nucmer application (including nucmer). If not given, will try to find
    nucmer in your PATH
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: Additional arguments to pass to nucmer, surrounded by quotes, i.e. "--maxmatch
    -b 200".
  type: boolean
  inputBinding:
    prefix: -a
- id: t
  doc: 'Number of threads to use (Default: 15)'
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: 'Output prefix (default: "out")'
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: 'Include self-vs-self alignments (default: self-vs-self alignments are not
    done when -g is given)'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: 'Include back-alignments, i.e. will align genome A vs genome B and also align
    genome B vs genome A (default: each potential alignment will only be included
    once)'
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: (uppercase) output version number and quit
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer_multi.pl
