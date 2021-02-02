class: CommandLineTool
id: add_gff_info_uniprot.cwl
inputs:
- id: in_verbose
  doc: "-c, --email TEXT       Contact email  [required]\n--buffer INTEGER       Number\
    \ of annotations to keep in memory  [default:\n50]\n-f, --force-taxon-id   Overwrite\
    \ taxon_id if already present\n-t, --taxon-id         Add taxonomic ids to annotations,\
    \ if taxon_id is\nfound, it won't be Overwritten.\n-l, --lineage          Add\
    \ taxonomic lineage to annotations\n-e, --eggnog           Add eggNOG mappings\
    \ to annotations\n-ec, --enzymes         Add EC mappings to annotations\n-ko,\
    \ --kegg_orthologs  Add KO mappings to annotations\n-d, --protein-names    Add\
    \ Uniprot description\n-m, --mapping TEXT     Add any DB mappings to annotations\n\
    --help                 Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-gff-info
- uniprot
