#!/usr/bin/env cwl-runner

baseCommand:
- rnasoup_consMFE.pl
class: CommandLineTool
cwlVersion: v1.0
id: rnasoup_consmfe.pl
inputs:
- doc: Original FASTA file with sequences which have been clustered.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
- doc: Directory containing intermediate*.aln files.
  id: dir
  inputBinding:
    prefix: --dir
  type: boolean
