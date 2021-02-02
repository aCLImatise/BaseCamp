class: CommandLineTool
id: deepac_vir_gwpa.cwl
inputs:
- id: in_details_dot
  doc: fragment            Fragment genomes for analysis.
  type: string
  inputBinding:
    position: 0
- id: in_genome_map
  doc: Generate a genome-wide phenotype potential map.
  type: string
  inputBinding:
    position: 1
- id: in_g_ranking
  doc: Generate gene rankings.
  type: string
  inputBinding:
    position: 2
- id: in_nt_contribs
  doc: Generate a genome-wide nt contribution map.
  type: string
  inputBinding:
    position: 3
- id: in_fact_iv
  doc: Get filter activations.
  type: string
  inputBinding:
    position: 4
- id: in_f_enrichment
  doc: Run filter enrichment analysis.
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac-vir
- gwpa
