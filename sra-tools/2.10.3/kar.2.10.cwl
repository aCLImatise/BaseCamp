class: CommandLineTool
id: kar.2.10.3.cwl
inputs:
- id: create
  doc: 'Create new archive. '
  type: string
  inputBinding:
    prefix: --create
- id: extract
  doc: 'Extract the contents of an archive into  directory. '
  type: string
  inputBinding:
    prefix: --extract
- id: test
  doc: 'Check the structural validity of an archive '
  type: string
  inputBinding:
    prefix: --test
- id: directory
  doc: 'The next token on the command line is the  name of the directory to extract
    to or  create from '
  type: Directory
  inputBinding:
    prefix: --directory
- id: force
  doc: '(no parameter) this will cause the extract  or create to over-write existing
    files unless  they are write-protected. Without this  option the program will
    fail if the archive  already exists for create or the target  directory exists
    for an extract '
  type: boolean
  inputBinding:
    prefix: --force
- id: long_list
  doc: 'more information will be given on each file  in test/list mode. '
  type: boolean
  inputBinding:
    prefix: --long-list
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
- id: stdout
  doc: 'Direct output to stdout '
  type: boolean
  inputBinding:
    prefix: --stdout
- id: md5
  doc: 'create md5sum-compatible checksum file '
  type: boolean
  inputBinding:
    prefix: --md5
outputs: []
cwlVersion: v1.1
baseCommand:
- kar.2.10.3
