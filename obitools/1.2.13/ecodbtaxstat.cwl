class: CommandLineTool
id: ecodbtaxstat.cwl
inputs:
- id: rank
  doc: 'The taxonomic rank at which frequencies have to be computed. Possible values
    are: class, family, forma, genus, infraclass, infraorder, kingdom, order, parvorder,
    phylum, species, species group, species subgroup, subclass, subfamily, subgenus,
    subkingdom, suborder, subphylum, subspecies, subtribe, superclass, superfamily,
    superkingdom, superorder, superphylum, tribe or varietas. (Default: species)'
  type: string
  inputBinding:
    prefix: --rank
- id: database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File
  inputBinding:
    prefix: --taxonomy-dump
- id: require_rank
  doc: select sequence with taxid tag containing a parent of rank <RANK_NAME>
  type: string
  inputBinding:
    prefix: --require-rank
- id: required
  doc: Select the sequences having the ancestor of taxid <TAXID>. If several ancestors
    are specified (with  '-r taxid1 -r taxid2'), the sequences having at least one
    of them are selected
  type: string
  inputBinding:
    prefix: --required
- id: ignore
  doc: ignored taxid
  type: string
  inputBinding:
    prefix: --ignore
outputs: []
cwlVersion: v1.1
baseCommand:
- ecodbtaxstat
