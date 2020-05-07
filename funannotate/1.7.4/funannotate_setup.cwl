class: CommandLineTool
id: funannotate_setup.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: install
  doc: 'Download format databases. Default: all [merops,uniprot,dbCAN,pfam,repeats,go,
    mibig,interpro,busco_outgroups,gene2product]'
  type: boolean
  inputBinding:
    prefix: --install
- id: busco_db
  doc: 'Busco Databases to install. Default: dikarya [all,fungi,aves,etc]'
  type: boolean
  inputBinding:
    prefix: --busco_db
- id: database
  doc: Path to funannotate database
  type: boolean
  inputBinding:
    prefix: --database
- id: update
  doc: Check remote md5 and update if newer version found
  type: boolean
  inputBinding:
    prefix: --update
- id: force
  doc: Force overwriting database
  type: boolean
  inputBinding:
    prefix: --force
- id: wget
  doc: Use wget to download instead of python requests
  type: boolean
  inputBinding:
    prefix: --wget
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- setup
