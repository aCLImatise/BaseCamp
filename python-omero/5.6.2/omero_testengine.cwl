class: CommandLineTool
id: omero_testengine.cwl
inputs:
- id: omer_o_userdir
  doc: "Set the base directory containing the user's files. Default: $HOME/omero"
  type: string
  inputBinding:
    position: 0
- id: omer_o_session_dir
  doc: 'Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions'
  type: string
  inputBinding:
    position: 1
- id: omer_o_tmpdir
  doc: 'Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp'
  type: string
  inputBinding:
    position: 2
- id: omer_o_password
  doc: Set the user's password for creating new sessions. Ignored if -w or --password
    is used.
  type: string
  inputBinding:
    position: 3
- id: path
  doc: Path to be passed to the Java process
  type: File
  inputBinding:
    position: 0
- id: java_help
  doc: Show the Java help text
  type: boolean
  inputBinding:
    prefix: --java-help
- id: create
  doc: Create a new session regardless of existing ones
  type: boolean
  inputBinding:
    prefix: --create
- id: server
  doc: OMERO server hostname
  type: string
  inputBinding:
    prefix: --server
- id: port
  doc: OMERO server port
  type: string
  inputBinding:
    prefix: --port
- id: group
  doc: OMERO server default group
  type: string
  inputBinding:
    prefix: --group
- id: user
  doc: OMERO username
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: OMERO password
  type: string
  inputBinding:
    prefix: --password
- id: key
  doc: OMERO session key (UUID of an active session)
  type: string
  inputBinding:
    prefix: --key
- id: sudo
  doc: Create session as this admin. Changes meaning of password!
  type: string
  inputBinding:
    prefix: --sudo
- id: quiet
  doc: Quiet mode. Causes most warning and diagnostic messages to be suppressed.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: bulk
  doc: '[BULK]                         Bulk YAML file for driving multiple imports'
  type: boolean
  inputBinding:
    prefix: --bulk
- id: log_prefix
  doc: '[LOGPREFIX]               Directory or file prefix for --file and --errs'
  type: boolean
  inputBinding:
    prefix: --logprefix
- id: file
  doc: '[FILE]                         File for storing the standard out of the Java
    process'
  type: boolean
  inputBinding:
    prefix: --file
- id: errs
  doc: '[ERRS]                         File for storing the standard err of the Java
    process'
  type: boolean
  inputBinding:
    prefix: --errs
- id: client_dir
  doc: 'Path to the directory containing the client JARs.  Default: lib/client'
  type: string
  inputBinding:
    prefix: --clientdir
- id: log_back
  doc: 'Path to a logback xml file.  Default: etc/logback-cli.xml'
  type: string
  inputBinding:
    prefix: --logback
- id: depth
  doc: Number of directories to scan down for files
  type: string
  inputBinding:
    prefix: --depth
- id: skip
  doc: Optional step to skip during import
  type: string
  inputBinding:
    prefix: --skip
- id: name
  doc: Image or plate name to use (**)
  type: string
  inputBinding:
    prefix: --name
- id: description
  doc: Image or plate description to use (**)
  type: string
  inputBinding:
    prefix: --description
- id: report
  doc: Report errors to the OME team (**)
  type: boolean
  inputBinding:
    prefix: --report
- id: upload
  doc: Upload broken files and log file (if any) with report. Required --report (**)
  type: boolean
  inputBinding:
    prefix: --upload
- id: logs
  doc: Upload log file (if any) with report. Required --report (**)
  type: boolean
  inputBinding:
    prefix: --logs
- id: email
  doc: Email for reported errors. Required --report (**)
  type: string
  inputBinding:
    prefix: --email
- id: annotation_ns
  doc: Namespace to use for subsequent annotation (**)
  type: string
  inputBinding:
    prefix: --annotation-ns
- id: annotation_text
  doc: Content for a text annotation (**)
  type: string
  inputBinding:
    prefix: --annotation-text
- id: annotation_link
  doc: Comment annotation ID to link all images to (**)
  type: string
  inputBinding:
    prefix: --annotation-link
- id: f
  doc: Display the used files and exit (**)
  type: boolean
  inputBinding:
    prefix: -f
- id: c
  doc: Continue importing after errors (**)
  type: boolean
  inputBinding:
    prefix: -c
- id: readers
  doc: Use the list of readers rather than the default (**)
  type: string
  inputBinding:
    prefix: --readers
- id: d
  doc: OMERO dataset ID to import image into (**)
  type: string
  inputBinding:
    prefix: -d
- id: r
  doc: OMERO screen ID to import plate into (**)
  type: string
  inputBinding:
    prefix: -r
- id: target
  doc: OMERO target specification (**)
  type: string
  inputBinding:
    prefix: --target
- id: debug
  doc: Turn debug logging on (**)
  type: string
  inputBinding:
    prefix: --debug
- id: output
  doc: Set an alternative output style
  type: string
  inputBinding:
    prefix: --output
- id: encrypted
  doc: Whether the import should use SSL or not
  type: string
  inputBinding:
    prefix: --encrypted
- id: advanced_help
  doc: Show the advanced help text
  type: boolean
  inputBinding:
    prefix: --advanced-help
- id: transfer
  doc: '[TYPE]                     Transfer methods like in-place import'
  type: boolean
  inputBinding:
    prefix: --transfer
- id: exclude
  doc: '[TYPE]                      Exclusion filters for preventing re-import'
  type: boolean
  inputBinding:
    prefix: --exclude
- id: checksum_algorithm
  doc: '[TYPE]           Alternative hashing mechanisms balancing speed & accuracy'
  type: boolean
  inputBinding:
    prefix: --checksum-algorithm
- id: parallel_upload
  doc: Number of file upload threads to run at the same time
  type: string
  inputBinding:
    prefix: --parallel-upload
- id: parallel_fileset
  doc: Number of fileset candidates to import at the same time
  type: string
  inputBinding:
    prefix: --parallel-fileset
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- testengine
