class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chira_merge.py.cwl
inputs:
- id: _bed_input
  doc: ', --bed            Input BED file with alignments (default: None)'
  type: boolean
  inputBinding:
    prefix: -b
- id: _outdir_path
  doc: ', --outdir         Output directory path for the whole analysis (default:
    None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: _gtf_annotation
  doc: ', --gtf            Annotation GTF file (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
- id: ao
  doc: ', --alignment_overlap  Minimum percentage overlap among BED entries inorder
    to merge. [0-1.0] (default: 0.7)'
  type: boolean
  inputBinding:
    prefix: -ao
- id: so
  doc: ', --segment_overlap  Matching read positions with greater than this % overlap
    are merged into a segment (default: 0.7)'
  type: boolean
  inputBinding:
    prefix: -so
- id: lt
  doc: ', --length_threshold  Minimum length of the alignments to consider as a fraction
    of longest alignmnet. [0.8-1.0] (default: 0.9)'
  type: boolean
  inputBinding:
    prefix: -lt
- id: _distance_blockbuster
  doc: ', --distance       Blockbuster parameter distance (default: 30)'
  type: boolean
  inputBinding:
    prefix: -d
- id: mc
  doc: ', --min_cluster_height  Blockbuster parameter minClusterHeight (default: 10)'
  type: boolean
  inputBinding:
    prefix: -mc
- id: mb
  doc: ', --min_block_height  Blockbuster parameter minBlockHeight (default: 10)'
  type: boolean
  inputBinding:
    prefix: -mb
- id: sc
  doc: ', --scale         Blockbuster parameter scale (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -sc
- id: co
  doc: ', --chimeric_overlap  Maximum number of bases allowed between the chimeric
    segments of a read (default: 2)'
  type: boolean
  inputBinding:
    prefix: -co
- id: fone
  doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f1
- id: f_two
  doc: ', --ref_fasta2    second priority fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: chimeric_only
  doc: 'Consider chimeric reads only for merging (default: False)'
  type: boolean
  inputBinding:
    prefix: --chimeric_only
- id: ls
  doc: ', --min_locus_size  Minimum number of alignments required per mered locus
    (default: 1)'
  type: boolean
  inputBinding:
    prefix: -ls
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_merge.py
