class: CommandLineTool
id: ecodbtaxstat.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_rank
  doc: "The taxonomic rank at which frequencies have to be\ncomputed. Possible values\
    \ are: class, family, forma,\ngenus, infraclass, infraorder, kingdom, order,\n\
    parvorder, phylum, species, species group, species\nsubgroup, subclass, subfamily,\
    \ subgenus, subkingdom,\nsuborder, subphylum, subspecies, subtribe, superclass,\n\
    superfamily, superkingdom, superorder, superphylum,\ntribe or varietas. (Default:\
    \ species)"
  type: string?
  inputBinding:
    prefix: --rank
- id: in_database
  doc: ecoPCR taxonomy Database name
  type: File?
  inputBinding:
    prefix: --database
- id: in_taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File?
  inputBinding:
    prefix: --taxonomy-dump
- id: in_require_rank
  doc: "select sequence with taxid tag containing a parent of\nrank <RANK_NAME>"
  type: string?
  inputBinding:
    prefix: --require-rank
- id: in_required
  doc: "Select the sequences having the ancestor of taxid\n<TAXID>. If several ancestors\
    \ are specified (with  '-r\ntaxid1 -r taxid2'), the sequences having at least\
    \ one\nof them are selected"
  type: long?
  inputBinding:
    prefix: --required
- id: in_ignore
  doc: "ignored taxid\n"
  type: string?
  inputBinding:
    prefix: --ignore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ecodbtaxstat
