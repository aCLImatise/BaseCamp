class: CommandLineTool
id: chira_merge.py.cwl
inputs:
- id: in_block_based
  doc: 'Input BED file with alignments (default: None)'
  type: boolean?
  inputBinding:
    prefix: --block_based
- id: in_outdir
  doc: "Output directory path for the whole analysis (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_gtf
  doc: 'Annotation GTF file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --gtf
- id: in_alignment_overlap
  doc: "Minimum percentage overlap among BED entries inorder\nto merge. [0-1.0] (default:\
    \ 0.7)"
  type: boolean?
  inputBinding:
    prefix: --alignment_overlap
- id: in_segment_overlap
  doc: "Matching read positions with greater than this %\noverlap are merged into\
    \ a segment (default: 0.7)"
  type: boolean?
  inputBinding:
    prefix: --segment_overlap
- id: in_length_threshold
  doc: "Minimum length of the alignments to consider as a\nfraction of longest alignmnet.\
    \ [0.8-1.0] (default:\n0.9)"
  type: boolean?
  inputBinding:
    prefix: --length_threshold
- id: in_distance
  doc: 'Blockbuster parameter distance (default: 30)'
  type: boolean?
  inputBinding:
    prefix: --distance
- id: in_min_cluster_height
  doc: 'Blockbuster parameter minClusterHeight (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --min_cluster_height
- id: in_min_block_height
  doc: 'Blockbuster parameter minBlockHeight (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --min_block_height
- id: in_scale
  doc: 'Blockbuster parameter scale (default: 0.1)'
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_chimeric_overlap
  doc: "Maximum number of bases allowed between the chimeric\nsegments of a read (default:\
    \ 2)"
  type: boolean?
  inputBinding:
    prefix: --chimeric_overlap
- id: in_ref_fast_a_one
  doc: 'First prioroty fasta file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --ref_fasta1
- id: in_ref_fast_a_two
  doc: 'second priority fasta file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --ref_fasta2
- id: in_chimeric_only
  doc: "Consider chimeric reads only for merging (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --chimeric_only
- id: in_min_locus_size
  doc: "Minimum number of alignments required per mered locus\n(default: 1)"
  type: boolean?
  inputBinding:
    prefix: --min_locus_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory path for the whole analysis (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- chira_merge.py
