#!/usr/bin/env cwl-runner

baseCommand:
- kissreads
class: CommandLineTool
cwlVersion: v1.0
id: kissreads
inputs:
- doc: ': will use seeds of length size_seed. Default: 25.'
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: ': a read can be mapped if its overlap is a least "minimal_read_overlap". Default:
    k'
  id: o
  inputBinding:
    prefix: -O
  type: long
- doc: ': a sequence is covered by at least min_coverage coherent reads. Default:
    2'
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: ': Maximal number of substitutions authorized between a read and a fragment.
    Note that no substitution is allowed on the central position while anaylizing
    the kissnp output. Default: 1.'
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: ': write read-coherent outputs. Default: standard output '
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: ': write unread-coherent outputs. Default: standard output '
  id: u
  inputBinding:
    prefix: -u
  type: File
- doc: 'input file (toCheck.fasta) is a kissnp output (incompatible with -I option)  in
    this case: 1/ only the upper characters are considered (no mapping done on the
    extensions) and 2/ the central position (where the SNP occurs) is strictly mapped,
    no subsitution is authorized on this position.'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'input file (toCheck.fasta) is an Intl output (incompatible with -n option) '
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: (int value). This is a heuristic for limiting the memory footprint. Instead
    of indexing each kmer of the sequences contained into the toCheck.fasta, kissreads
    indexes kmers occurring each "index_stride" position. Default = 1 (no heuristic)
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: number of threads (also limited by number of input files)
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: ', write a file of reads mapped to sequences in file align_file'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: mode
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: coherent events in a standard fasta file format
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: this message and exit
  id: h
  inputBinding:
    prefix: -h
  type: string
