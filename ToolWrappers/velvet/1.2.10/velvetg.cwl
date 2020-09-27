class: CommandLineTool
id: velvetg.cwl
inputs:
- id: in_cov_cut_off
  doc: ": removal of low coverage nodes AFTER tour bus or allow the system to infer\
    \ it\n(default: no removal)"
  type: string
  inputBinding:
    prefix: -cov_cutoff
- id: in_ins_length
  doc: ': expected distance between two paired end reads (default: no read pairing)'
  type: long
  inputBinding:
    prefix: -ins_length
- id: in_read_tr_kg
  doc: ': tracking of short read positions in assembly (default: no tracking)'
  type: string
  inputBinding:
    prefix: -read_trkg
- id: in_min_contig_lgth
  doc: ': minimum contig length exported to contigs.fa file (default: hash length
    * 2)'
  type: long
  inputBinding:
    prefix: -min_contig_lgth
- id: in_amos_file
  doc: ': export assembly to AMOS file (default: no export)'
  type: File
  inputBinding:
    prefix: -amos_file
- id: in_exp_cov
  doc: ": expected coverage of unique regions or allow the system to infer it\n(default:\
    \ no long or paired-end read resolution)"
  type: string
  inputBinding:
    prefix: -exp_cov
- id: in_long_cov_cut_off
  doc: ": removal of nodes with low long-read coverage AFTER tour bus\n(default: no\
    \ removal)"
  type: string
  inputBinding:
    prefix: -long_cov_cutoff
- id: in_ins_length_long
  doc: ': expected distance between two long paired-end reads (default: no read pairing)'
  type: long
  inputBinding:
    prefix: -ins_length_long
- id: in_scaffolding
  doc: ': scaffolding of contigs used paired end information (default: on)'
  type: string
  inputBinding:
    prefix: -scaffolding
- id: in_max_branch_length
  doc: ': maximum length in base pair of bubble (default: 100)'
  type: long
  inputBinding:
    prefix: -max_branch_length
- id: in_max_divergence
  doc: ': maximum divergence rate between two branches in a bubble (default: 0.2)'
  type: double
  inputBinding:
    prefix: -max_divergence
- id: in_max_gap_count
  doc: ': maximum number of gaps allowed in the alignment of the two branches of a
    bubble (default: 3)'
  type: long
  inputBinding:
    prefix: -max_gap_count
- id: in_min_pair_count
  doc: ': minimum number of paired end connections to justify the scaffolding of two
    long contigs (default: 5)'
  type: long
  inputBinding:
    prefix: -min_pair_count
- id: in_max_coverage
  doc: ': removal of high coverage nodes AFTER tour bus (default: no removal)'
  type: string
  inputBinding:
    prefix: -max_coverage
- id: in_coverage_mask
  doc: ': minimum coverage required for confident regions of contigs (default: 1)'
  type: long
  inputBinding:
    prefix: -coverage_mask
- id: in_long_mult_cut_off
  doc: ': minimum number of long reads required to merge contigs (default: 2)'
  type: long
  inputBinding:
    prefix: -long_mult_cutoff
- id: in_unused_reads
  doc: ': export unused reads in UnusedReads.fa file (default: no)'
  type: File
  inputBinding:
    prefix: -unused_reads
- id: in_alignments
  doc: ': export a summary of contig alignment to the reference sequences (default:
    no)'
  type: string
  inputBinding:
    prefix: -alignments
- id: in_export_filtered
  doc: ': export the long nodes which were eliminated by the coverage filters (default:
    no)'
  type: string
  inputBinding:
    prefix: -exportFiltered
- id: in_clean
  doc: ': remove all the intermediary files which are useless for recalculation (default
    : no)'
  type: string
  inputBinding:
    prefix: -clean
- id: in_very_clean
  doc: ': remove all the intermediary files (no recalculation possible) (default:
    no)'
  type: string
  inputBinding:
    prefix: -very_clean
- id: in_paired_exp_fraction
  doc: ': remove all the paired end connections which less than the specified fraction
    of the expected count (default: 0.1)'
  type: double
  inputBinding:
    prefix: -paired_exp_fraction
- id: in_short_mate_paired
  doc: '* <yes|no>      : for mate-pair libraries, indicate that the library might
    be contaminated with paired-end reads (default no)'
  type: boolean
  inputBinding:
    prefix: -shortMatePaired
- id: in_conserve_long
  doc: ': preserve sequences with long reads in them (default no)'
  type: string
  inputBinding:
    prefix: -conserveLong
- id: in_directory
  doc: ': working directory name'
  type: Directory
  inputBinding:
    position: 0
- id: in_directory_slash_contigs_dot_fa
  doc: ': fasta file of contigs longer than twice hash length'
  type: Directory
  inputBinding:
    position: 0
- id: in_directory_slash_stats_dot_txt
  doc: ': stats file (tab-spaced) useful for determining appropriate coverage cutoff'
  type: Directory
  inputBinding:
    position: 1
- id: in_directory_slash_last_graph
  doc: ': special formatted file with all the information on the final graph'
  type: Directory
  inputBinding:
    position: 2
- id: in_directory_slash_velvet_as_mdot_afg
  doc: ': (if requested) AMOS compatible assembly file'
  type: Directory
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- velvetg
