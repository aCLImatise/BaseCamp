class: CommandLineTool
id: updatepaths.pl.cwl
inputs:
- id: man
  doc: Display full documentation and exit
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: 'Enable verbose output '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: dry_run
  doc: Don't actually update any paths
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: paths
  doc: List of directory paths to search for files
  type: string
  inputBinding:
    prefix: --paths
- id: backup
  doc: Backup existing file with extension <ext>
  type: string
  inputBinding:
    prefix: --backup
- id: database
  doc: Path to database file
  type: string
  inputBinding:
    prefix: --database
outputs: []
cwlVersion: v1.1
baseCommand:
- updatepaths.pl
