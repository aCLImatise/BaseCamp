class: CommandLineTool
id: chakin_phylogeny_load_tree.cwl
inputs:
- id: in_name
  doc: "The name given to the phylotree entry in the database\n(default=<filename>)"
  type: File?
  inputBinding:
    prefix: --name
- id: in_xref_db
  doc: "The name of the db to link dbxrefs for the trees\n(default: \"null\")  [default:\
    \ null]"
  type: string?
  inputBinding:
    prefix: --xref_db
- id: in_xref_accession
  doc: "The accession to use for dbxrefs for the trees\n(assumed same as name unless\
    \ otherwise specified)"
  type: string?
  inputBinding:
    prefix: --xref_accession
- id: in_match_on_name
  doc: "Match polypeptide features using their name instead\nof their uniquename"
  type: boolean?
  inputBinding:
    prefix: --match_on_name
- id: in_prefix
  doc: "Comma-separated list of prefix to be removed from\nidentifiers (e.g species\
    \ prefixes when loading\nOrthoFinder output)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_newick
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_analysis_id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- chakin
- phylogeny
- load_tree
