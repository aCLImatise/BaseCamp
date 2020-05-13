class: CommandLineTool
id: dxua.cwl
inputs:
- id: e
  doc: '[ --env ]                       Print environment information'
  type: boolean
  inputBinding:
    prefix: -e
- id: a
  doc: '[ --auth-token ] arg            Specify the authentication token'
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: '[ --project ] arg               Name or ID of the destination project'
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: '[ --folder ] arg (=/)           Name of the destination folder'
  type: boolean
  inputBinding:
    prefix: -f
- id: n
  doc: '[ --name ] arg                  Name of the remote file (Note: Extension  ".gz"
    will be appended if the file is  compressed before uploading)'
  type: boolean
  inputBinding:
    prefix: -n
- id: visibility
  doc: (=visible)        Use "--visibility hidden" to set the  file's visibility as
    hidden.
  type: string
  inputBinding:
    prefix: --visibility
- id: property
  doc: Key-value pair to add as a property;  repeat as necessary, e.g. "--property  key1=val1
    --property key2=val2"
  type: string
  inputBinding:
    prefix: --property
- id: type
  doc: Type of the data object; repeat as  necessary, e.g. "--type type1 --type  type2"
  type: string
  inputBinding:
    prefix: --type
- id: tag
  doc: Tag of the data object; repeat as  necessary, e.g. "--tag tag1 --tag tag2"
  type: string
  inputBinding:
    prefix: --tag
- id: details
  doc: JSON to store as details
  type: string
  inputBinding:
    prefix: --details
- id: recursive
  doc: Recursively upload the directories
  type: boolean
  inputBinding:
    prefix: --recursive
- id: read_threads
  doc: (=2)            Number of parallel disk read threads
  type: string
  inputBinding:
    prefix: --read-threads
- id: c
  doc: '[ --compress-threads ] arg (=7) Number of parallel compression threads'
  type: boolean
  inputBinding:
    prefix: -c
- id: u
  doc: '[ --upload-threads ] arg (=8)   Number of parallel upload threads'
  type: boolean
  inputBinding:
    prefix: -u
- id: s
  doc: "[ --chunk-size ] arg (=75M)     Size of chunks in which the file should be\
    \ uploaded. Specify an integer size in bytes or append optional units (B, K, M,\
    \ G).  E.g., '50M' sets chunk size to 50  megabytes."
  type: boolean
  inputBinding:
    prefix: -s
- id: throttle
  doc: Limit maximum upload speed. Specify an  integer to set speed in bytes/second
    or  append optional units (B, K, M, G). E.g.,  '3M' limits upload speed to 3  megabytes/second.
    If not set, uploads are  not throttled.
  type: string
  inputBinding:
    prefix: --throttle
- id: r
  doc: '[ --tries ] arg (=3)            Number of tries to upload each chunk'
  type: boolean
  inputBinding:
    prefix: -r
- id: do_not_compress
  doc: Do not compress file(s) before upload
  type: boolean
  inputBinding:
    prefix: --do-not-compress
- id: g
  doc: '[ --progress ]                  Report upload progress'
  type: boolean
  inputBinding:
    prefix: -g
- id: v
  doc: '[ --verbose ]                   Verbose logging'
  type: boolean
  inputBinding:
    prefix: -v
- id: wait_on_close
  doc: Wait for file objects to be closed before  exiting
  type: boolean
  inputBinding:
    prefix: --wait-on-close
- id: do_not_resume
  doc: Do not attempt to resume any incomplete  uploads
  type: boolean
  inputBinding:
    prefix: --do-not-resume
- id: test
  doc: Test upload agent settings
  type: boolean
  inputBinding:
    prefix: --test
- id: i
  doc: '[ --read-from-stdin ]           Read file content from stdin'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- dxua
