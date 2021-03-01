class: CommandLineTool
id: pegasus_enrichment.cwl
inputs:
- id: in_organism
  doc: 'Organism. See https://biit.cs.ut.ee/gprofiler/page/organism-list for full
    list. [default: hsapiens]'
  type: string?
  inputBinding:
    prefix: --organism
- id: in_enrichment_threshold
  doc: 'Include enrichment results with corrected p-value less than this threshold.
    [default: 0.05]'
  type: double?
  inputBinding:
    prefix: --enrichment_threshold
- id: in_max_genes
  doc: 'Maximum number of genes to include in query. [default: 100]'
  type: long?
  inputBinding:
    prefix: --max_genes
- id: in_markers_spreadsheet
  doc: Output spreadsheet from de_analysis command.
  type: string
  inputBinding:
    position: 0
- id: in_output_spreadsheet
  doc: File containing enrichment results.
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: An xlsx file containing enrichment results.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- enrichment
