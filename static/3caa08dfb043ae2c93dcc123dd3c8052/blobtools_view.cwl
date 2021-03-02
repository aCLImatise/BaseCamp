class: CommandLineTool
id: blobtools_view.cwl
inputs:
- id: in_input
  doc: BlobDB file (created with "blobtools create")
  type: File?
  inputBinding:
    prefix: --input
- id: in_out
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: --out
- id: in_list
  doc: List of sequence names (file).
  type: File?
  inputBinding:
    prefix: --list
- id: in_tax_rule
  doc: "Taxrule used for computing taxonomy\n(supported: \"bestsum\", \"bestsumorder\"\
    )\n[default: bestsum]"
  type: string?
  inputBinding:
    prefix: --taxrule
- id: in_rank
  doc: "...     Taxonomic rank(s) at which output will be written.\n(supported: 'species',\
    \ 'genus', 'family', 'order',\n'phylum', 'superkingdom', 'all') [default: phylum]"
  type: string?
  inputBinding:
    prefix: --rank
- id: in_hits
  doc: "Displays taxonomic hits from tax files\nthat contributed to the taxonomy."
  type: boolean?
  inputBinding:
    prefix: --hits
- id: in_concoct
  doc: 'Generate concoct files [default: False]'
  type: boolean?
  inputBinding:
    prefix: --concoct
- id: in_cov
  doc: 'Generate cov files [default: False]'
  type: boolean?
  inputBinding:
    prefix: --cov
- id: in_experimental
  doc: 'Experimental output [default: False]'
  type: string?
  inputBinding:
    prefix: --experimental
- id: in_notable
  doc: 'Do not generate table view [default: False]'
  type: boolean?
  inputBinding:
    prefix: --notable
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- blobtools
- view
