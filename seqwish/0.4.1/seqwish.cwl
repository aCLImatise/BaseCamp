#!/usr/bin/env cwl-runner

baseCommand:
- seqwish
class: CommandLineTool
cwlVersion: v1.0
id: seqwish
inputs:
- doc: '[FILE], --paf-alns=[FILE]       Induce the graph from these PAF formatted
    alignments. Optionally, a list of filenames and minimum match lengths: [file_1]:[min_match_length_1],...
    This allows the differential filtering of short matches from some but not all
    inputs, in effect allowing `-k` to be specified differently for each input.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[FILE], --seqs=[FILE]           The sequences used to generate the alignments
    (FASTA, FASTQ, .seq)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[BASE], --base=[BASE]           Build graph using this basename'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[FILE], --gfa=[FILE]            Write the graph in GFA to FILE'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '[FILE], --match-list=[FILE]     Use the sequence match list in FILE to subset
    the input alignments'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[BASE], --vgp-out=[BASE]        Write the graph in VGP format with basename
    FILE'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[N], --threads=[N]              Use this many threads during parallel steps'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[N], --repeat-max=[N]           Limit transitive closure to include no more
    than N copies of a given input base'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[N], --min-match-len=[N]        Filter exact matches below this length. This
    can smooth the graph locally and prevent the formation of complex local graph
    topologies from forming due to differential alignments.'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[N], --transclose-batch=[N]     Number of bp to use for transitive closure
    batch (default 1M)'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: keep intermediate files generated during graph induction
  id: keep_temp
  inputBinding:
    prefix: --keep-temp
  type: boolean
- doc: enable debugging
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
