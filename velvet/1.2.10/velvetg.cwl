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
    long contigs (default: 5)'
  id: min_pair_count
  inputBinding:
    prefix: -min_pair_count
  type: long
- doc: ': removal of high coverage nodes AFTER tour bus (default: no removal)'
  id: max_coverage
  inputBinding:
    prefix: -max_coverage
  type: double
- doc: ': minimum coverage required for confident regions of contigs (default: 1)'
  id: coverage_mask
  inputBinding:
    prefix: -coverage_mask
  type: long
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
- doc: '<yes|no>            : export a summary of contig alignment to the reference
    sequences (default: no)'
  id: alignments
  inputBinding:
    prefix: -alignments
  type: boolean
- doc: '<yes|no>        : export the long nodes which were eliminated by the coverage
    filters (default: no)'
  id: export_filtered
  inputBinding:
    prefix: -exportFiltered
  type: boolean
- doc: '<yes|no>                 : remove all the intermediary files which are useless
    for recalculation (default : no)'
  id: clean
  inputBinding:
    prefix: -clean
  type: boolean
- doc: '<yes|no>            : remove all the intermediary files (no recalculation
    possible) (default: no)'
  id: very_clean
  inputBinding:
    prefix: -very_clean
  type: boolean
- doc: ': remove all the paired end connections which less than the specified fraction
    of the expected count (default: 0.1)'
  id: paired_exp_fraction
  inputBinding:
    prefix: -paired_exp_fraction
  type: string
- doc: '* <yes|no>      : for mate-pair libraries, indicate that the library might
    be contaminated with paired-end reads (default no)'
  id: short_mate_paired
  inputBinding:
    prefix: -shortMatePaired
  type: boolean
- doc: '<yes|no>          : preserve sequences with long reads in them (default no)'
  id: conserve_long
  inputBinding:
    prefix: -conserveLong
  type: boolean
