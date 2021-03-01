class: CommandLineTool
id: haphpipe_multiple_align.cwl
inputs:
- id: in_seqs
  doc: FASTA file with sequences to be aligned
  type: File?
  inputBinding:
    prefix: --seqs
- id: in_dir_list
  doc: "List of directories which include either a final.fna\nor ph_haplotypes.fna\
    \ file, one on each line"
  type: File?
  inputBinding:
    prefix: --dir_list
- id: in_ref_gtf
  doc: Reference GTF file
  type: File?
  inputBinding:
    prefix: --ref_gtf
- id: in_out_align
  doc: Name for alignment file
  type: File?
  inputBinding:
    prefix: --out_align
- id: in_nuc
  doc: 'Assume nucleotide (default: False)'
  type: boolean?
  inputBinding:
    prefix: --nuc
- id: in_amino
  doc: 'Assume amino (default: False)'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_clustal_out
  doc: 'Clustal output format (default: False)'
  type: boolean?
  inputBinding:
    prefix: --clustalout
- id: in_phylip_out
  doc: 'PHYLIP output format (default: False)'
  type: boolean?
  inputBinding:
    prefix: --phylipout
- id: in_input_order
  doc: 'Output order same as input (default: False)'
  type: boolean?
  inputBinding:
    prefix: --inputorder
- id: in_reorder
  doc: 'Output order aligned (default: False)'
  type: boolean?
  inputBinding:
    prefix: --reorder
- id: in_tree_out
  doc: "Guide tree is output to the input.tree file (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --treeout
- id: in_quiet_maff_t
  doc: 'Do not report progress (default: False)'
  type: boolean?
  inputBinding:
    prefix: --quiet_mafft
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_algo
  doc: "Use different algorithm in command: linsi, ginsi,\neinsi, fftnsi, fftns, nwns,\
    \ nwnsi"
  type: string?
  inputBinding:
    prefix: --algo
- id: in_auto
  doc: 'Automatically select algorithm (default: False)'
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_six_mer_pair
  doc: "Calculate distance based on shared 6mers, on by\ndefault (default: False)"
  type: boolean?
  inputBinding:
    prefix: --sixmerpair
- id: in_global_pair
  doc: 'Use Needleman-Wunsch algorithm (default: False)'
  type: boolean?
  inputBinding:
    prefix: --globalpair
- id: in_local_pair
  doc: 'Use Smith-Waterman algorithm (default: False)'
  type: boolean?
  inputBinding:
    prefix: --localpair
- id: in_gen_afp_air
  doc: "Use local algorithm with generalized affine gap cost\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --genafpair
- id: in_fast_a_pair
  doc: 'Use FASTA for pairwise alignment (default: False)'
  type: boolean?
  inputBinding:
    prefix: --fastapair
- id: in_weight_i
  doc: Weighting factor for consistency term
  type: string?
  inputBinding:
    prefix: --weighti
- id: in_re_tree
  doc: Number of times to build guide tree
  type: long?
  inputBinding:
    prefix: --retree
- id: in_max_iterate
  doc: Number of cycles for iterative refinement
  type: long?
  inputBinding:
    prefix: --maxiterate
- id: in_no_score
  doc: "Do not check alignment score in iterative alignment\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --noscore
- id: in_mem_save
  doc: 'Use Myers-Miller algorithm (default: False)'
  type: boolean?
  inputBinding:
    prefix: --memsave
- id: in_part_tree
  doc: "Use fast tree-building method with 6mer distance\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --parttree
- id: in_dp_part_tree
  doc: "Use PartTree algorithm with distances based on DP\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --dpparttree
- id: in_fast_apart_tree
  doc: "Use PartTree algorithm with distances based on FASTA\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --fastaparttree
- id: in_part_size
  doc: Number of partitions for PartTree
  type: long?
  inputBinding:
    prefix: --partsize
- id: in_group_size
  doc: Max number of sequences for PartTree
  type: long?
  inputBinding:
    prefix: --groupsize
- id: in_gap_opening_penalty
  doc: Gap opening penalty
  type: string?
  inputBinding:
    prefix: --lop
- id: in_lep
  doc: Offset value
  type: string?
  inputBinding:
    prefix: --lep
- id: in_gap_extension_penalty
  doc: Gap extension penalty
  type: string?
  inputBinding:
    prefix: --lexp
- id: in_gap_opening_penalty_skip
  doc: Gap opening penalty to skip alignment
  type: string?
  inputBinding:
    prefix: --LOP
- id: in_gap_extension_penalty_skip
  doc: Gap extension penalty to skip alignment
  type: string?
  inputBinding:
    prefix: --LEXP
- id: in_bl
  doc: 'BLOSUM matrix: 30, 45, 62, or 80'
  type: long?
  inputBinding:
    prefix: --bl
- id: in_jtt
  doc: JTT PAM number >0
  type: long?
  inputBinding:
    prefix: --jtt
- id: in_tm
  doc: Transmembrane PAM number >0
  type: long?
  inputBinding:
    prefix: --tm
- id: in_aa_matrix
  doc: Path to user-defined AA scoring matrix
  type: File?
  inputBinding:
    prefix: --aamatrix
- id: in_f_model
  doc: "Incorporate AA/nuc composition info into scoring\nmatrix (default: False)"
  type: boolean?
  inputBinding:
    prefix: --fmodel
- id: in_n_cpu
  doc: 'Number of CPU to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --ncpu
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Name for log file (output)
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_fast_a_only
  doc: "Output fasta files separated by region but do not\nalign (default: False)"
  type: boolean?
  inputBinding:
    prefix: --fastaonly
- id: in_align_all
  doc: "Do not separate files by region, align entire file\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --alignall
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Name for log file (output)
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haphpipe:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- haphpipe
- multiple_align
