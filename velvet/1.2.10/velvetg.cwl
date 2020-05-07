class: CommandLineTool
id: velvetg.cwl
inputs:
- id: directory
  doc: ': working directory name'
  type: Directory
  inputBinding:
    position: 0
- id: scaffolding
  doc: '<yes|no>           : scaffolding of contigs used paired end information (default:
    on)'
  type: boolean
  inputBinding:
    prefix: -scaffolding
- id: max_branch_length
  doc: ': maximum length in base pair of bubble (default: 100)'
  type: long
  inputBinding:
    prefix: -max_branch_length
- id: max_divergence
  doc: ': maximum divergence rate between two branches in a bubble (default: 0.2)'
  type: double
  inputBinding:
    prefix: -max_divergence
- id: max_gap_count
  doc: ': maximum number of gaps allowed in the alignment of the two branches of a
    bubble (default: 3)'
  type: long
  inputBinding:
    prefix: -max_gap_count
- id: min_pair_count
  doc: ': minimum number of paired end connections to justify the scaffolding of two
    long contigs (default: 5)'
  type: long
  inputBinding:
    prefix: -min_pair_count
- id: max_coverage
  doc: ': removal of high coverage nodes AFTER tour bus (default: no removal)'
  type: double
  inputBinding:
    prefix: -max_coverage
- id: coverage_mask
  doc: ': minimum coverage required for confident regions of contigs (default: 1)'
  type: long
  inputBinding:
    prefix: -coverage_mask
- id: long_mult_cut_off
  doc: ': minimum number of long reads required to merge contigs (default: 2)'
  type: long
  inputBinding:
    prefix: -long_mult_cutoff
- id: unused_reads
  doc: '<yes|no>          : export unused reads in UnusedReads.fa file (default: no)'
  type: boolean
  inputBinding:
    prefix: -unused_reads
- id: alignments
  doc: '<yes|no>            : export a summary of contig alignment to the reference
    sequences (default: no)'
  type: boolean
  inputBinding:
    prefix: -alignments
- id: export_filtered
  doc: '<yes|no>        : export the long nodes which were eliminated by the coverage
    filters (default: no)'
  type: boolean
  inputBinding:
    prefix: -exportFiltered
- id: clean
  doc: '<yes|no>                 : remove all the intermediary files which are useless
    for recalculation (default : no)'
  type: boolean
  inputBinding:
    prefix: -clean
- id: very_clean
  doc: '<yes|no>            : remove all the intermediary files (no recalculation
    possible) (default: no)'
  type: boolean
  inputBinding:
    prefix: -very_clean
- id: paired_exp_fraction
  doc: ': remove all the paired end connections which less than the specified fraction
    of the expected count (default: 0.1)'
  type: string
  inputBinding:
    prefix: -paired_exp_fraction
- id: short_mate_paired
  doc: '* <yes|no>      : for mate-pair libraries, indicate that the library might
    be contaminated with paired-end reads (default no)'
  type: boolean
  inputBinding:
    prefix: -shortMatePaired
- id: conserve_long
  doc: '<yes|no>          : preserve sequences with long reads in them (default no)'
  type: boolean
  inputBinding:
    prefix: -conserveLong
outputs: []
cwlVersion: v1.1
baseCommand:
- velvetg
