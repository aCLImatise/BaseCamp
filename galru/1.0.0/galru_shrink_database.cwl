class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/galru_shrink_database.cwl
inputs:
- id: percentage_similarity
  doc: 'Base directory for species databases, defaults to bundled (default: 0.99)'
  type: string
  inputBinding:
    prefix: --percentage_similarity
- id: db_dir
  doc: 'Base directory for species databases, defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --db_dir
- id: output_filename
  doc: 'Output database name (default: filtered.metadata.tsv)'
  type: string
  inputBinding:
    prefix: --output_filename
- id: output_crisp_r_filename
  doc: 'Output CRISPR FASTA file name (default: filtered.crispr_regions.fasta)'
  type: string
  inputBinding:
    prefix: --output_crispr_filename
- id: debug
  doc: 'Turn on debugging and save intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: species
  doc: Species name, use galru_species to see all available
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- galru_shrink_database
