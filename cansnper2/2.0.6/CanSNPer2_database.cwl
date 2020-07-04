class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CanSNPer2_database.cwl
inputs:
- id: db
  doc: ', --database   CanSNPer2 database name'
  type: boolean
  inputBinding:
    prefix: -db
- id: tree
  doc: CanSNPer tree source file
  type: boolean
  inputBinding:
    prefix: --tree
- id: annotation
  doc: CanSNPer snp source file
  type: boolean
  inputBinding:
    prefix: --annotation
- id: references
  doc: File containing all reference genomes listed
  type: boolean
  inputBinding:
    prefix: --references
- id: source_type
  doc: Select source file type
  type: boolean
  inputBinding:
    prefix: --source_type
- id: create
  doc: Create new database!
  type: boolean
  inputBinding:
    prefix: --create
- id: mod_file
  doc: File with modifications/update to the tree
  type: boolean
  inputBinding:
    prefix: --mod_file
- id: parent
  doc: Node (or nodes matching tree file) from which to update/replace/remove
  type: boolean
  inputBinding:
    prefix: --parent
- id: remove
  doc: If node is given, instead of replace/update remove branch from node
  type: boolean
  inputBinding:
    prefix: --remove
- id: replace
  doc: replace node
  type: boolean
  inputBinding:
    prefix: --replace
- id: export
  doc: Export database to text format (exports tree and annotation file)
  type: boolean
  inputBinding:
    prefix: --export
- id: export_format
  doc: Select output format [tab, newick]
  type: boolean
  inputBinding:
    prefix: --export_format
- id: _outdir_outdir
  doc: ', --outdir      outdir for database export!'
  type: boolean
  inputBinding:
    prefix: -o
- id: tmpdir
  doc: Specify tmp directory default (/tmp)
  type: boolean
  inputBinding:
    prefix: --tmpdir
- id: logs
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logs
- id: verbose
  doc: print process info, default no output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug info
  type: boolean
  inputBinding:
    prefix: --debug
- id: supress
  doc: supress warnings
  type: boolean
  inputBinding:
    prefix: --supress
outputs: []
cwlVersion: v1.1
baseCommand:
- CanSNPer2-database
