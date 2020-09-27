class: CommandLineTool
id: funannotate_setup.cwl
inputs:
- id: in_install
  doc: "Download format databases. Default: all\n[merops,uniprot,dbCAN,pfam,repeats,go,\n\
    mibig,interpro,busco_outgroups,gene2product]"
  type: boolean
  inputBinding:
    prefix: --install
- id: in_busco_db
  doc: 'Busco Databases to install. Default: dikarya [all,fungi,aves,etc]'
  type: boolean
  inputBinding:
    prefix: --busco_db
- id: in_database
  doc: Path to funannotate database
  type: boolean
  inputBinding:
    prefix: --database
- id: in_update
  doc: Check remote md5 and update if newer version found
  type: boolean
  inputBinding:
    prefix: --update
- id: in_force
  doc: Force overwriting database
  type: boolean
  inputBinding:
    prefix: --force
- id: in_wget
  doc: Use wget to download instead of python requests
  type: boolean
  inputBinding:
    prefix: --wget
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funannotate
- setup
