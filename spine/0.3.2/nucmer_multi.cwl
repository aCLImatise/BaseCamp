#!/usr/bin/env cwl-runner

baseCommand:
- nucmer_multi.pl
class: CommandLineTool
cwlVersion: v1.0
id: nucmer_multi.pl
inputs:
- doc: input fasta file
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: path to nucmer application (including nucmer). If not given, will try to find
    nucmer in your PATH
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Additional arguments to pass to nucmer, surrounded by quotes, i.e. "--maxmatch
    -b 200".
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: 'Number of threads to use (Default: 15)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'Output prefix (default: "out")'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: 'Include self-vs-self alignments (default: self-vs-self alignments are not
    done when -g is given)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: 'Include back-alignments, i.e. will align genome A vs genome B and also align
    genome B vs genome A (default: each potential alignment will only be included
    once)'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: (uppercase) output version number and quit
  id: v
  inputBinding:
    prefix: -V
  type: boolean
