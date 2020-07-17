class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/comparem_aai.cwl
inputs:
- id: evalue
  doc: 'maximum e-value for reporting an alignments (default: 0.001)'
  type: string
  inputBinding:
    prefix: --evalue
- id: per_identity
  doc: 'minimum percent identity for reporting an alignment (default: 30.0)'
  type: string
  inputBinding:
    prefix: --per_identity
- id: per_aln_len
  doc: 'minimum percent coverage of query sequence for reporting an alignment (default:
    70.0)'
  type: string
  inputBinding:
    prefix: --per_aln_len
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
- id: sorted_hit_table
  doc: sorted file indicating genes passing sequence similarity criteria
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- comparem
- aai
