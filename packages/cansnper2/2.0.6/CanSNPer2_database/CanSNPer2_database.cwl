class: CommandLineTool
id: CanSNPer2_database.cwl
inputs:
- id: in_db
  doc: ', --database   CanSNPer2 database name'
  type: boolean
  inputBinding:
    prefix: -db
- id: in_tree
  doc: CanSNPer tree source file
  type: boolean
  inputBinding:
    prefix: --tree
- id: in_annotation
  doc: CanSNPer snp source file
  type: boolean
  inputBinding:
    prefix: --annotation
- id: in_references
  doc: File containing all reference genomes listed
  type: boolean
  inputBinding:
    prefix: --references
- id: in_source_type
  doc: Select source file type
  type: boolean
  inputBinding:
    prefix: --source_type
- id: in_create
  doc: Create new database!
  type: boolean
  inputBinding:
    prefix: --create
- id: in_mod_file
  doc: File with modifications/update to the tree
  type: boolean
  inputBinding:
    prefix: --mod_file
- id: in_parent
  doc: Node (or nodes matching tree file) from which to
  type: boolean
  inputBinding:
    prefix: --parent
- id: in_replace
  doc: replace node
  type: boolean
  inputBinding:
    prefix: --replace
- id: in_export
  doc: "Export database to text format (exports tree and\nannotation file)"
  type: boolean
  inputBinding:
    prefix: --export
- id: in_export_format
  doc: Select output format [tab, newick]
  type: boolean
  inputBinding:
    prefix: --export_format
- id: in__outdir_outdir
  doc: ', --outdir      outdir for database export!'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_tmpdir
  doc: Specify tmp directory default (/tmp)
  type: boolean
  inputBinding:
    prefix: --tmpdir
- id: in_logs
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logs
- id: in_verbose
  doc: print process info, default no output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: print debug info
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_supress
  doc: supress warnings
  type: boolean
  inputBinding:
    prefix: --supress
- id: in_update_slash_replace_slash_remove
  doc: --remove           If node is given, instead of replace/update remove branch
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CanSNPer2-database
