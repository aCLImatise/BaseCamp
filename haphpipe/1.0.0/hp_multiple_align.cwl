#!/usr/bin/env cwl-runner

baseCommand:
- hp_multiple_align
class: CommandLineTool
cwlVersion: v1.0
id: hp_multiple_align
inputs:
- doc: FASTA file with sequences to be aligned
  id: seqs
  inputBinding:
    prefix: --seqs
  type: string
- doc: List of directories which include either a final.fna or ph_haplotypes.fna file,
    one on each line
  id: dir_list
  inputBinding:
    prefix: --dir_list
  type: string
- doc: Reference GTF file
  id: ref_gtf
  inputBinding:
    prefix: --ref_gtf
  type: string
- doc: Name for alignment file
  id: out_align
  inputBinding:
    prefix: --out_align
  type: string
- doc: 'Assume nucleotide (default: False)'
  id: nuc
  inputBinding:
    prefix: --nuc
  type: boolean
- doc: 'Assume amino (default: False)'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: 'Clustal output format (default: False)'
  id: clustal_out
  inputBinding:
    prefix: --clustalout
  type: boolean
- doc: 'PHYLIP output format (default: False)'
  id: phylip_out
  inputBinding:
    prefix: --phylipout
  type: boolean
- doc: 'Output order same as input (default: False)'
  id: input_order
  inputBinding:
    prefix: --inputorder
  type: boolean
- doc: 'Output order aligned (default: False)'
  id: reorder
  inputBinding:
    prefix: --reorder
  type: boolean
- doc: 'Guide tree is output to the input.tree file (default: False)'
  id: tree_out
  inputBinding:
    prefix: --treeout
  type: boolean
- doc: 'Do not report progress (default: False)'
  id: quiet_maff_t
  inputBinding:
    prefix: --quiet_mafft
  type: boolean
- doc: Output directory
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Use different algorithm in command: linsi, ginsi, einsi, fftnsi, fftns, nwns,
    nwnsi'
  id: algo
  inputBinding:
    prefix: --algo
  type: string
- doc: 'Automatically select algorithm (default: False)'
  id: auto
  inputBinding:
    prefix: --auto
  type: boolean
- doc: 'Calculate distance based on shared 6mers, on by default (default: False)'
  id: six_mer_pair
  inputBinding:
    prefix: --sixmerpair
  type: boolean
- doc: 'Use Needleman-Wunsch algorithm (default: False)'
  id: global_pair
  inputBinding:
    prefix: --globalpair
  type: boolean
- doc: 'Use Smith-Waterman algorithm (default: False)'
  id: local_pair
  inputBinding:
    prefix: --localpair
  type: boolean
- doc: 'Use local algorithm with generalized affine gap cost (default: False)'
  id: gen_afp_air
  inputBinding:
    prefix: --genafpair
  type: boolean
- doc: 'Use FASTA for pairwise alignment (default: False)'
  id: fast_a_pair
  inputBinding:
    prefix: --fastapair
  type: boolean
- doc: Weighting factor for consistency term
  id: weight_i
  inputBinding:
    prefix: --weighti
  type: string
- doc: Number of times to build guide tree
  id: re_tree
  inputBinding:
    prefix: --retree
  type: string
- doc: Number of cycles for iterative refinement
  id: max_iterate
  inputBinding:
    prefix: --maxiterate
  type: long
- doc: 'Do not check alignment score in iterative alignment (default: False)'
  id: no_score
  inputBinding:
    prefix: --noscore
  type: boolean
- doc: 'Use Myers-Miller algorithm (default: False)'
  id: mem_save
  inputBinding:
    prefix: --memsave
  type: boolean
- doc: 'Use fast tree-building method with 6mer distance (default: False)'
  id: part_tree
  inputBinding:
    prefix: --parttree
  type: boolean
- doc: 'Use PartTree algorithm with distances based on DP (default: False)'
  id: dp_part_tree
  inputBinding:
    prefix: --dpparttree
  type: boolean
- doc: 'Use PartTree algorithm with distances based on FASTA (default: False)'
  id: fast_apart_tree
  inputBinding:
    prefix: --fastaparttree
  type: boolean
- doc: Number of partitions for PartTree
  id: part_size
  inputBinding:
    prefix: --partsize
  type: string
- doc: Max number of sequences for PartTree
  id: group_size
  inputBinding:
    prefix: --groupsize
  type: string
- doc: Gap opening penalty
  id: lop
  inputBinding:
    prefix: --lop
  type: string
- doc: Offset value
  id: lep
  inputBinding:
    prefix: --lep
  type: string
- doc: Gap extension penalty
  id: l_exp
  inputBinding:
    prefix: --lexp
  type: string
- doc: Gap opening penalty to skip alignment
  id: lop
  inputBinding:
    prefix: --LOP
  type: string
- doc: Gap extension penalty to skip alignment
  id: l_exp
  inputBinding:
    prefix: --LEXP
  type: string
- doc: 'BLOSUM matrix: 30, 45, 62, or 80'
  id: bl
  inputBinding:
    prefix: --bl
  type: string
- doc: JTT PAM number >0
  id: jtt
  inputBinding:
    prefix: --jtt
  type: string
- doc: Transmembrane PAM number >0
  id: tm
  inputBinding:
    prefix: --tm
  type: string
- doc: Path to user-defined AA scoring matrix
  id: aa_matrix
  inputBinding:
    prefix: --aamatrix
  type: string
- doc: 'Incorporate AA/nuc composition info into scoring matrix (default: False)'
  id: f_model
  inputBinding:
    prefix: --fmodel
  type: boolean
- doc: 'Number of CPU to use (default: 1)'
  id: n_cpu
  inputBinding:
    prefix: --ncpu
  type: string
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Name for log file (output)
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Output fasta files separated by region but do not align (default: False)'
  id: fast_a_only
  inputBinding:
    prefix: --fastaonly
  type: boolean
- doc: 'Do not separate files by region, align entire file (default: False)'
  id: align_all
  inputBinding:
    prefix: --alignall
  type: boolean
