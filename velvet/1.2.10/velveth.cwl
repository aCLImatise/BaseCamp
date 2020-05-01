#!/usr/bin/env cwl-runner

baseCommand:
- velveth
class: CommandLineTool
cwlVersion: v1.0
id: velveth
inputs:
- doc: ': directory name for output files'
  id: directory
  inputBinding:
    position: 0
  type: Directory
- doc: ': EITHER an odd integer (if even, it will be decremented) <= 191 (if above,
    will be reduced) : OR: m,M,s where m and M are odd integers (if not, they will
    be decremented) with m < M <= 191 (if above, will be reduced) and s is a step
    (even number). Velvet will then hash from k=m to k=M with a step of s'
  id: hash_length
  inputBinding:
    position: 1
  type: string
- doc: ': path to sequence file or - for standard input'
  id: filename
  inputBinding:
    position: 2
  type: File
- doc: ': File contains paired reads interleaved in the one file (default)'
  id: interleaved
  inputBinding:
    prefix: -interleaved
  type: boolean
- doc: ': Read 2 separate files for paired reads'
  id: separate
  inputBinding:
    prefix: -separate
  type: boolean
- doc: ': for strand specific transcriptome sequencing data (default: off)'
  id: strand_specific
  inputBinding:
    prefix: -strand_specific
  type: boolean
- doc: ': reuse Sequences file (or link) already in directory (no need to provide
    original filenames in this case (default: off)'
  id: reuse_sequences
  inputBinding:
    prefix: -reuse_Sequences
  type: boolean
- doc: ': reuse binary sequences file (or link) already in directory (no need to provide
    original filenames in this case (default: off)'
  id: reuse_binary
  inputBinding:
    prefix: -reuse_binary
  type: boolean
- doc: ': simply prepare Sequences file, do not hash reads or prepare Roadmaps file
    (default: off)'
  id: no_hash
  inputBinding:
    prefix: -noHash
  type: boolean
- doc: ': create binary CnyUnifiedSeq file (default: off)'
  id: create_binary
  inputBinding:
    prefix: -create_binary
  type: boolean
