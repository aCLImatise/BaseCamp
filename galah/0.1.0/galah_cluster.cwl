class: CommandLineTool
id: galah_cluster.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ani
  doc: 'Average nucleotide identity threshold for clustering [default: 99]'
  type: string
  inputBinding:
    prefix: --ani
- id: check_m_tab_table
  doc: Output of CheckM lineage_wf/taxonomy_wf/qa with --tab_table specified
  type: string
  inputBinding:
    prefix: --checkm-tab-table
- id: genome_fast_a_directory
  doc: Directory containing fasta files for processing
  type: string
  inputBinding:
    prefix: --genome-fasta-directory
- id: genome_fast_a_extension
  doc: 'File extension of FASTA files in --genome-fasta-directory [default: fna]'
  type: string
  inputBinding:
    prefix: --genome-fasta-extension
- id: genome_fast_a_files
  doc: '...         List of fasta files for processing'
  type: string
  inputBinding:
    prefix: --genome-fasta-files
- id: genome_fast_a_list
  doc: List of fasta file paths, one per line, for processing
  type: string
  inputBinding:
    prefix: --genome-fasta-list
- id: max_contamination
  doc: Genomes with greater than this percentage of contamination are exluded
  type: long
  inputBinding:
    prefix: --max-contamination
- id: min_completeness
  doc: 'Genomes with less than this percentage of completeness are exluded [default:
    0]'
  type: long
  inputBinding:
    prefix: --min-completeness
- id: pre_threshold_ani
  doc: 'Require at least this dashing-derived ANI for preclustering and to avoid FastANI
    on distant lineages within preclusters [default: 95]'
  type: string
  inputBinding:
    prefix: --prethreshold-ani
- id: threads
  doc: 'Number of CPU threads to use [default: 1]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- galah
- cluster
