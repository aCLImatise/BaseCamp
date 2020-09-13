class: CommandLineTool
id: ../../../chira_merge.py.cwl
inputs:
- id: in_block_based
  doc: ''
  type: boolean
  inputBinding:
    prefix: --block_based
- id: in__bed_input
  doc: ', --bed            Input BED file with alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -b
- id: in__outdir_output
  doc: ", --outdir         Output directory path for the whole analysis (default:\n\
    None)"
  type: File
  inputBinding:
    prefix: -o
- id: in__gtf_gtf
  doc: ', --gtf            Annotation GTF file (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_ao
  doc: ", --alignment_overlap\nMinimum percentage overlap among BED entries inorder\n\
    to merge. [0-1.0] (default: 0.7)"
  type: boolean
  inputBinding:
    prefix: -ao
- id: in_so
  doc: ", --segment_overlap\nMatching read positions with greater than this %\noverlap\
    \ are merged into a segment (default: 0.7)"
  type: boolean
  inputBinding:
    prefix: -so
- id: in_lt
  doc: ", --length_threshold\nMinimum length of the alignments to consider as a\n\
    fraction of longest alignmnet. [0.8-1.0] (default:\n0.9)"
  type: boolean
  inputBinding:
    prefix: -lt
- id: in__distance_blockbuster
  doc: ', --distance       Blockbuster parameter distance (default: 30)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_mc
  doc: ", --min_cluster_height\nBlockbuster parameter minClusterHeight (default: 10)"
  type: boolean
  inputBinding:
    prefix: -mc
- id: in_mb
  doc: ", --min_block_height\nBlockbuster parameter minBlockHeight (default: 10)"
  type: boolean
  inputBinding:
    prefix: -mb
- id: in_sc
  doc: ', --scale         Blockbuster parameter scale (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -sc
- id: in_co
  doc: ", --chimeric_overlap\nMaximum number of bases allowed between the chimeric\n\
    segments of a read (default: 2)"
  type: boolean
  inputBinding:
    prefix: -co
- id: in_fone
  doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: in_f_two
  doc: ', --ref_fasta2    second priority fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: in_chimeric_only
  doc: "Consider chimeric reads only for merging (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --chimeric_only
- id: in_ls
  doc: ", --min_locus_size\nMinimum number of alignments required per mered locus\n\
    (default: 1)"
  type: boolean
  inputBinding:
    prefix: -ls
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_output
  doc: ", --outdir         Output directory path for the whole analysis (default:\n\
    None)"
  type: File
  outputBinding:
    glob: $(inputs.in__outdir_output)
cwlVersion: v1.1
baseCommand:
- chira_merge.py
