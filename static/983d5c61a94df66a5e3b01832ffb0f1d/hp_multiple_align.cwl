class: CommandLineTool
id: hp_multiple_align.cwl
inputs:
- id: seqs
  doc: FASTA file with sequences to be aligned
  type: string
  inputBinding:
    prefix: --seqs
- id: dir_list
  doc: List of directories which include either a final.fna or ph_haplotypes.fna file,
    one on each line
  type: string
  inputBinding:
    prefix: --dir_list
- id: ref_gtf
  doc: Reference GTF file
  type: string
  inputBinding:
    prefix: --ref_gtf
- id: out_align
  doc: Name for alignment file
  type: string
  inputBinding:
    prefix: --out_align
- id: nuc
  doc: 'Assume nucleotide (default: False)'
  type: boolean
  inputBinding:
    prefix: --nuc
- id: amino
  doc: 'Assume amino (default: False)'
  type: boolean
  inputBinding:
    prefix: --amino
- id: clustal_out
  doc: 'Clustal output format (default: False)'
  type: boolean
  inputBinding:
    prefix: --clustalout
- id: phylip_out
  doc: 'PHYLIP output format (default: False)'
  type: boolean
  inputBinding:
    prefix: --phylipout
- id: input_order
  doc: 'Output order same as input (default: False)'
  type: boolean
  inputBinding:
    prefix: --inputorder
- id: reorder
  doc: 'Output order aligned (default: False)'
  type: boolean
  inputBinding:
    prefix: --reorder
- id: tree_out
  doc: 'Guide tree is output to the input.tree file (default: False)'
  type: boolean
  inputBinding:
    prefix: --treeout
- id: quiet_maff_t
  doc: 'Do not report progress (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet_mafft
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: algo
  doc: 'Use different algorithm in command: linsi, ginsi, einsi, fftnsi, fftns, nwns,
    nwnsi'
  type: string
  inputBinding:
    prefix: --algo
- id: auto
  doc: 'Automatically select algorithm (default: False)'
  type: boolean
  inputBinding:
    prefix: --auto
- id: six_mer_pair
  doc: 'Calculate distance based on shared 6mers, on by default (default: False)'
  type: boolean
  inputBinding:
    prefix: --sixmerpair
- id: global_pair
  doc: 'Use Needleman-Wunsch algorithm (default: False)'
  type: boolean
  inputBinding:
    prefix: --globalpair
- id: local_pair
  doc: 'Use Smith-Waterman algorithm (default: False)'
  type: boolean
  inputBinding:
    prefix: --localpair
- id: gen_afp_air
  doc: 'Use local algorithm with generalized affine gap cost (default: False)'
  type: boolean
  inputBinding:
    prefix: --genafpair
- id: fast_a_pair
  doc: 'Use FASTA for pairwise alignment (default: False)'
  type: boolean
  inputBinding:
    prefix: --fastapair
- id: weight_i
  doc: Weighting factor for consistency term
  type: string
  inputBinding:
    prefix: --weighti
- id: re_tree
  doc: Number of times to build guide tree
  type: string
  inputBinding:
    prefix: --retree
- id: max_iterate
  doc: Number of cycles for iterative refinement
  type: long
  inputBinding:
    prefix: --maxiterate
- id: no_score
  doc: 'Do not check alignment score in iterative alignment (default: False)'
  type: boolean
  inputBinding:
    prefix: --noscore
- id: mem_save
  doc: 'Use Myers-Miller algorithm (default: False)'
  type: boolean
  inputBinding:
    prefix: --memsave
- id: part_tree
  doc: 'Use fast tree-building method with 6mer distance (default: False)'
  type: boolean
  inputBinding:
    prefix: --parttree
- id: dp_part_tree
  doc: 'Use PartTree algorithm with distances based on DP (default: False)'
  type: boolean
  inputBinding:
    prefix: --dpparttree
- id: fast_apart_tree
  doc: 'Use PartTree algorithm with distances based on FASTA (default: False)'
  type: boolean
  inputBinding:
    prefix: --fastaparttree
- id: part_size
  doc: Number of partitions for PartTree
  type: string
  inputBinding:
    prefix: --partsize
- id: group_size
  doc: Max number of sequences for PartTree
  type: string
  inputBinding:
    prefix: --groupsize
- id: lop
  doc: Gap opening penalty
  type: string
  inputBinding:
    prefix: --lop
- id: lep
  doc: Offset value
  type: string
  inputBinding:
    prefix: --lep
- id: l_exp
  doc: Gap extension penalty
  type: string
  inputBinding:
    prefix: --lexp
- id: lop
  doc: Gap opening penalty to skip alignment
  type: string
  inputBinding:
    prefix: --LOP
- id: l_exp
  doc: Gap extension penalty to skip alignment
  type: string
  inputBinding:
    prefix: --LEXP
- id: bl
  doc: 'BLOSUM matrix: 30, 45, 62, or 80'
  type: string
  inputBinding:
    prefix: --bl
- id: jtt
  doc: JTT PAM number >0
  type: string
  inputBinding:
    prefix: --jtt
- id: tm
  doc: Transmembrane PAM number >0
  type: string
  inputBinding:
    prefix: --tm
- id: aa_matrix
  doc: Path to user-defined AA scoring matrix
  type: string
  inputBinding:
    prefix: --aamatrix
- id: f_model
  doc: 'Incorporate AA/nuc composition info into scoring matrix (default: False)'
  type: boolean
  inputBinding:
    prefix: --fmodel
- id: n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: string
  inputBinding:
    prefix: --ncpu
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Name for log file (output)
  type: string
  inputBinding:
    prefix: --logfile
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: fast_a_only
  doc: 'Output fasta files separated by region but do not align (default: False)'
  type: boolean
  inputBinding:
    prefix: --fastaonly
- id: align_all
  doc: 'Do not separate files by region, align entire file (default: False)'
  type: boolean
  inputBinding:
    prefix: --alignall
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_multiple_align
