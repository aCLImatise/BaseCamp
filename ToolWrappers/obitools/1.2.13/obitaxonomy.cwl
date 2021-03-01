class: CommandLineTool
id: obitaxonomy.cwl
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
- id: in_rankparent__addtaxontaxonnamerankparentadds
  doc: ":rank:parent, --add-taxon=<taxon_name>:rank:parent\nAdds a new taxon to the\
    \ taxonomy. The new taxon is\ndescribed by three values separated by colons: the\n\
    scientific name, the rank of the new taxon, the taxid\nof the parent taxon"
  type: string?
  inputBinding:
    prefix: -a
- id: in_delete_local_tax_on
  doc: Erase a local taxon
  type: string?
  inputBinding:
    prefix: --delete-local-taxon
- id: in_add_species
  doc: "Adds a new species to the taxonomy. The new species is\ndescribed by its scientific\
    \ name"
  type: string?
  inputBinding:
    prefix: --add-species
- id: in_add_file
  doc: "Add all the species from a fasta file to the taxonomy.\nThe header of the\
    \ sequences must contain the field\ndefined by the -k option"
  type: File?
  inputBinding:
    prefix: --add-file
- id: in_key_name
  doc: "Name of the attribute key used to find the species\nnames in the headers when\
    \ the -F option is used.\nDefault = 'species_name'"
  type: string?
  inputBinding:
    prefix: --key_name
- id: in_taxid__addfavoritenametaxonnametaxidadd
  doc: ":taxid, --add-favorite-name=<taxon_name>:taxid\nAdd a new favorite name to\
    \ the taxonomy. The new name\nis described by two values separated by a colon.\
    \ the\nnew favorite name and the taxid of the taxon"
  type: string?
  inputBinding:
    prefix: -f
- id: in__mintaxidminimal_taxid
  doc: "####, --min-taxid=####\nminimal taxid for the newly added taxid"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_restricting_ancestor
  doc: "works with the -F option. Can be a word or a taxid\n(number). Enables to restrict\
    \ the adding of taxids\nunder a specified ancestor. If it's a word, it's the\n\
    field containing the ancestor's taxid in each\nsequence's header (can be different\
    \ for each\nsequence). If it's a number, it's the taxid of the\nancestor (in which\
    \ case it's the same for all the\nsequences). All the sequences in the file for\
    \ which\nthe genus can't be found will be added under this\nancestor."
  type: long?
  inputBinding:
    prefix: --restricting_ancestor
- id: in_path
  doc: "works with the -F option. Field name for the taxonomy\npath of the taxa if\
    \ they are in the headers of the\nsequences. Must be of the form\n'Fungi,Agaricomycetes,Thelephorales,Thelephoraceae'\n\
    with the highest ancestors first and ',' as separators\nbetween ancestors"
  type: File?
  inputBinding:
    prefix: --path
- id: in_database
  doc: ecoPCR taxonomy Database name
  type: File?
  inputBinding:
    prefix: --database
- id: in_taxonomy_dump
  doc: "NCBI Taxonomy dump repository name\n"
  type: File?
  inputBinding:
    prefix: --taxonomy-dump
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obitaxonomy
