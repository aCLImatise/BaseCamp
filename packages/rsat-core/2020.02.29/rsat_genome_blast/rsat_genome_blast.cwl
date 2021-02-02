class: CommandLineTool
id: rsat_genome_blast.cwl
inputs:
- id: in_db_tax_on
  doc: "In the latter case, there is no need to run the reciprocal blast, since\n\
    the query yaxon is the same as the database taxon."
  type: string
  inputBinding:
    prefix: -dbtaxon
- id: in_genome_blast
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mINPUT FORMAT\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_organism_dot
  doc: Although the matching is performed at the protein level, the table
  type: string
  inputBinding:
    position: 0
- id: in_comparison_dot
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_blast_all
  doc: The formatdb step has to be done before running blastall. Note that both
  type: string
  inputBinding:
    position: 0
- id: in_comparisons_dot
  doc: 'Example: matching all Fungi against all Bacteria genome-blast -qtaxon'
  type: string
  inputBinding:
    position: 0
- id: in_default_dot
  doc: "\e[1m-outdir output_directory\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_blast_dot
  doc: "genome-blast -v 1 -q my_org -dbtaxon my_taxon -task blastall\ngenome-blast\
    \ -v 1 -db my_org -qtaxon my_taxon -task blastall -no_self"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- genome-blast
