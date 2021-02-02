class: CommandLineTool
id: add_gff_info_unipfile.cwl
inputs:
- id: in_verbose
  doc: "-i, --mapping-file TEXT         Uniprot mapping file  [required]\n-f, --force-taxon-id\
    \            Overwrite taxon_id if already present\n-m, --mapping [NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING]\n\
    Mappings to add  [required]\n--progress                      Shows Progress Bar\n\
    --help                          Show this message and exit.\n"
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
- unipfile
