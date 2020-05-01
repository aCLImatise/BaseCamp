#!/usr/bin/env cwl-runner

baseCommand:
- velvetg
class: CommandLineTool
cwlVersion: v1.0
id: velvetg
inputs:
- doc: ': working directory name'
  id: directory
  inputBinding:
    position: 0
  type: Directory
- doc: '<yes|no>           : scaffolding of contigs used paired end information (default:
    on)'
  id: scaffolding
  inputBinding:
    prefix: -scaffolding
  type: boolean
- doc: ': maximum length in base pair of bubble (default: 100)'
  id: max_branch_length
  inputBinding:
    prefix: -max_branch_length
  type: long
- doc: ': maximum divergence rate between two branches in a bubble (default: 0.2)'
  id: max_divergence
  inputBinding:
    prefix: -max_divergence
  type: double
- doc: ': maximum number of gaps allowed in the alignment of the two branches of a
    bubble (default: 3)'
  id: max_gap_count
  inputBinding:
    prefix: -max_gap_count
  type: long
- doc: ': minimum number of paired end connections to justify the scaffolding of two
    long contigs (default: 10)'
  id: min_pair_count
  inputBinding:
    prefix: -min_pair_count
  type: long
- doc: ': removal of high coverage nodes AFTER tour bus (default: no removal)'
  id: max_coverage
  inputBinding:
    prefix: -max_coverage
  type: double
- doc: ': minimum number of long reads required to merge contigs (default: 2)'
  id: long_mult_cut_off
  inputBinding:
    prefix: -long_mult_cutoff
  type: long
- doc: '<yes|no>          : export unused reads in UnusedReads.fa file (default: no)'
  id: unused_reads
  inputBinding:
    prefix: -unused_reads
  type: boolean
