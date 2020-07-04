class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/comparem_classify.cwl
inputs:
- id: num_top_targets
  doc: 'number of top scoring target genomes to report per query genome (default:
    1)'
  type: string
  inputBinding:
    prefix: --num_top_targets
- id: taxonomy_file
  doc: file indicating taxonomic identification of all target genomes
  type: string
  inputBinding:
    prefix: --taxonomy_file
- id: evalue
  doc: 'e-value cutoff for identifying initial blast hits (default: 0.001)'
  type: string
  inputBinding:
    prefix: --evalue
- id: per_identity
  doc: 'percent identity for defining homology (default: 30.0)'
  type: string
  inputBinding:
    prefix: --per_identity
- id: per_aln_len
  doc: 'percent alignment length of query sequence for defining homology (default:
    70.0)'
  type: string
  inputBinding:
    prefix: --per_aln_len
- id: file_ext
  doc: 'extension of files to process (default: fna)'
  type: File
  inputBinding:
    prefix: --file_ext
- id: keep_r_bhs
  doc: create file with reciprocal best hits
  type: boolean
  inputBinding:
    prefix: --keep_rbhs
- id: cpus
  doc: 'number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: query_gene_file
  doc: file with all query genes
  type: string
  inputBinding:
    position: 0
- id: target_gene_file
  doc: file with all target genes
  type: string
  inputBinding:
    position: 1
- id: sorted_hit_table
  doc: sorted file indicating genes passing sequence similarity criteria
  type: string
  inputBinding:
    position: 2
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- comparem
- classify
