#!/usr/bin/env cwl-runner

baseCommand:
- dxua
class: CommandLineTool
cwlVersion: v1.0
id: dxua
inputs:
- doc: '[ --env ]                       Print environment information'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --auth-token ] arg            Specify the authentication token'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --project ] arg               Name or ID of the destination project'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --folder ] arg (=/)           Name of the destination folder'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --name ] arg                  Name of the remote file (Note: Extension  ".gz"
    will be appended if the file is  compressed before uploading)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: (=visible)        Use "--visibility hidden" to set the  file's visibility as
    hidden.
  id: visibility
  inputBinding:
    prefix: --visibility
  type: string
- doc: Key-value pair to add as a property;  repeat as necessary, e.g. "--property  key1=val1
    --property key2=val2"
  id: property
  inputBinding:
    prefix: --property
  type: string
- doc: Type of the data object; repeat as  necessary, e.g. "--type type1 --type  type2"
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: Tag of the data object; repeat as  necessary, e.g. "--tag tag1 --tag tag2"
  id: tag
  inputBinding:
    prefix: --tag
  type: string
- doc: JSON to store as details
  id: details
  inputBinding:
    prefix: --details
  type: string
- doc: Recursively upload the directories
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: (=2)            Number of parallel disk read threads
  id: read_threads
  inputBinding:
    prefix: --read-threads
  type: string
- doc: '[ --compress-threads ] arg (=7) Number of parallel compression threads'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --upload-threads ] arg (=8)   Number of parallel upload threads'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: "[ --chunk-size ] arg (=75M)     Size of chunks in which the file should be\
    \ uploaded. Specify an integer size in bytes or append optional units (B, K, M,\
    \ G).  E.g., '50M' sets chunk size to 50  megabytes."
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Limit maximum upload speed. Specify an  integer to set speed in bytes/second
    or  append optional units (B, K, M, G). E.g.,  '3M' limits upload speed to 3  megabytes/second.
    If not set, uploads are  not throttled.
  id: throttle
  inputBinding:
    prefix: --throttle
  type: string
- doc: '[ --tries ] arg (=3)            Number of tries to upload each chunk'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Do not compress file(s) before upload
  id: do_not_compress
  inputBinding:
    prefix: --do-not-compress
  type: boolean
- doc: '[ --progress ]                  Report upload progress'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '[ --verbose ]                   Verbose logging'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Wait for file objects to be closed before  exiting
  id: wait_on_close
  inputBinding:
    prefix: --wait-on-close
  type: boolean
- doc: Do not attempt to resume any incomplete  uploads
  id: do_not_resume
  inputBinding:
    prefix: --do-not-resume
  type: boolean
- doc: Test upload agent settings
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: '[ --read-from-stdin ]           Read file content from stdin'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
