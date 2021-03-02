class: CommandLineTool
id: comparem_classify.cwl
inputs:
- id: in_num_top_targets
  doc: "number of top scoring target genomes to report per\nquery genome (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --num_top_targets
- id: in_taxonomy_file
  doc: "file indicating taxonomic identification of all target\ngenomes"
  type: File?
  inputBinding:
    prefix: --taxonomy_file
- id: in_evalue
  doc: "e-value cutoff for identifying initial blast hits\n(default: 0.001)"
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_per_identity
  doc: 'percent identity for defining homology (default: 30.0)'
  type: double?
  inputBinding:
    prefix: --per_identity
- id: in_per_aln_len
  doc: "percent alignment length of query sequence for\ndefining homology (default:\
    \ 70.0)"
  type: long?
  inputBinding:
    prefix: --per_aln_len
- id: in_file_ext
  doc: 'extension of files to process (default: fna)'
  type: File?
  inputBinding:
    prefix: --file_ext
- id: in_keep_r_bhs
  doc: create file with reciprocal best hits
  type: boolean?
  inputBinding:
    prefix: --keep_rbhs
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_identify_similar_genomes
  doc: Identify similar genomes based on AAI value.
  type: string
  inputBinding:
    position: 0
- id: in_query_gene_file
  doc: file with all query genes
  type: string
  inputBinding:
    position: 0
- id: in_target_gene_file
  doc: file with all target genes
  type: string
  inputBinding:
    position: 1
- id: in_sorted_hit_table
  doc: "sorted file indicating genes passing sequence\nsimilarity criteria"
  type: string
  inputBinding:
    position: 2
- id: in_output_directory
  doc: output directory
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/comparem:0.1.2--py_0
cwlVersion: v1.1
baseCommand:
- comparem
- classify
