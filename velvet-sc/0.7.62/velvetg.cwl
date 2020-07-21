class: CommandLineTool
id: ../../../velvetg.cwl
inputs:
- id: scaffolding
  doc: ': scaffolding of contigs used paired end information (default: on)'
  type: string
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
    long contigs (default: 10)'
  type: long
  inputBinding:
    prefix: -min_pair_count
- id: max_coverage
  doc: ': removal of high coverage nodes AFTER tour bus (default: no removal)'
  type: double
  inputBinding:
    prefix: -max_coverage
- id: long_mult_cut_off
  doc: ': minimum number of long reads required to merge contigs (default: 2)'
  type: long
  inputBinding:
    prefix: -long_mult_cutoff
- id: unused_reads
  doc: ': export unused reads in UnusedReads.fa file (default: no)'
  type: string
  inputBinding:
    prefix: -unused_reads
- id: directory
  doc: ': working directory name'
  type: Directory
  inputBinding:
    position: 0
- id: directory_slash_contigs_dot_fa
  doc: ': fasta file of contigs longer than twice hash length'
  type: Directory
  inputBinding:
    position: 0
- id: directory_slash_stats_dot_txt
  doc: ': stats file (tab-spaced) useful for determining appropriate coverage cutoff'
  type: Directory
  inputBinding:
    position: 1
- id: directory_slash_last_graph
  doc: ': special formatted file with all the information on the final graph'
  type: Directory
  inputBinding:
    position: 2
- id: directory_slash_velvet_as_mdot_afg
  doc: ': (if requested) AMOS compatible assembly file'
  type: Directory
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- velvetg
