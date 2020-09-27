class: CommandLineTool
id: comparem_aai.cwl
inputs:
- id: in_evalue
  doc: "maximum e-value for reporting an alignments (default:\n0.001)"
  type: double
  inputBinding:
    prefix: --evalue
- id: in_per_identity
  doc: "minimum percent identity for reporting an alignment\n(default: 30.0)"
  type: double
  inputBinding:
    prefix: --per_identity
- id: in_per_aln_len
  doc: "minimum percent coverage of query sequence for\nreporting an alignment (default:\
    \ 70.0)"
  type: double
  inputBinding:
    prefix: --per_aln_len
- id: in_keep_r_bhs
  doc: create file with reciprocal best hits
  type: boolean
  inputBinding:
    prefix: --keep_rbhs
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_query_gene_file
  doc: file with all query genes
  type: string
  inputBinding:
    position: 0
- id: in_sorted_hit_table
  doc: "sorted file indicating genes passing sequence\nsimilarity criteria"
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comparem
- aai
