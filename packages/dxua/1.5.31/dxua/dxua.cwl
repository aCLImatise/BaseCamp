class: CommandLineTool
id: dxua.cwl
inputs:
- id: in_print_environment_information
  doc: '[ --env ]                       Print environment information'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_arg_specify_authentication
  doc: '[ --auth-token ] arg            Specify the authentication token'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_name_id
  doc: '[ --project ] arg               Name or ID of the destination project'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_name_destination
  doc: '[ --folder ] arg (=/)           Name of the destination folder'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_name_remote
  doc: "[ --name ] arg                  Name of the remote file (Note: Extension\n\
    \".gz\" will be appended if the file is\ncompressed before uploading)"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_visibility
  doc: "(=visible)        Use \"--visibility hidden\" to set the\nfile's visibility\
    \ as hidden."
  type: File
  inputBinding:
    prefix: --visibility
- id: in_property
  doc: "Key-value pair to add as a property;\nrepeat as necessary, e.g. \"--property\n\
    key1=val1 --property key2=val2\""
  type: long
  inputBinding:
    prefix: --property
- id: in_type
  doc: "Type of the data object; repeat as\nnecessary, e.g. \"--type type1 --type\n\
    type2\""
  type: long
  inputBinding:
    prefix: --type
- id: in_tag
  doc: "Tag of the data object; repeat as\nnecessary, e.g. \"--tag tag1 --tag tag2\""
  type: long
  inputBinding:
    prefix: --tag
- id: in_details
  doc: JSON to store as details
  type: string
  inputBinding:
    prefix: --details
- id: in_recursive
  doc: Recursively upload the directories
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_read_threads
  doc: (=2)            Number of parallel disk read threads
  type: long
  inputBinding:
    prefix: --read-threads
- id: in_arg_number_parallel_compression
  doc: '[ --compress-threads ] arg (=7) Number of parallel compression threads'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_number_parallel_upload
  doc: '[ --upload-threads ] arg (=8)   Number of parallel upload threads'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_arg_m_size
  doc: "[ --chunk-size ] arg (=75M)     Size of chunks in which the file should be\n\
    uploaded. Specify an integer size in bytes\nor append optional units (B, K, M,\
    \ G).\nE.g., '50M' sets chunk size to 50\nmegabytes."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_throttle
  doc: "Limit maximum upload speed. Specify an\ninteger to set speed in bytes/second\
    \ or\nappend optional units (B, K, M, G). E.g.,\n'3M' limits upload speed to 3\n\
    megabytes/second. If not set, uploads are\nnot throttled."
  type: long
  inputBinding:
    prefix: --throttle
- id: in_arg_number_tries
  doc: '[ --tries ] arg (=3)            Number of tries to upload each chunk'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_do_not_compress
  doc: Do not compress file(s) before upload
  type: boolean
  inputBinding:
    prefix: --do-not-compress
- id: in_report_upload_progress
  doc: '[ --progress ]                  Report upload progress'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__verbose_logging
  doc: '[ --verbose ]                   Verbose logging'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_wait_on_close
  doc: Wait for file objects to be closed before
  type: boolean
  inputBinding:
    prefix: --wait-on-close
- id: in_read_file_content
  doc: '[ --read-from-stdin ]           Read file content from stdin'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_exiting
  doc: '--do-not-resume                    Do not attempt to resume any incomplete '
  type: string
  inputBinding:
    position: 0
- id: in_uploads
  doc: --test                             Test upload agent settings
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dxua
