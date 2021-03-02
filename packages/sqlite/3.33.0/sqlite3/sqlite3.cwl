class: CommandLineTool
id: sqlite3.cwl
inputs:
- id: in_run__exit
  doc: run ".archive ARGS" and exit
  type: string?
  inputBinding:
    prefix: -A
- id: in_append
  doc: append the database to the end of the file
  type: boolean?
  inputBinding:
    prefix: -append
- id: in_ascii
  doc: set output mode to 'ascii'
  type: boolean?
  inputBinding:
    prefix: -ascii
- id: in_bail
  doc: stop after hitting an error
  type: boolean?
  inputBinding:
    prefix: -bail
- id: in_batch
  doc: force batch I/O
  type: boolean?
  inputBinding:
    prefix: -batch
- id: in_box
  doc: set output mode to 'box'
  type: boolean?
  inputBinding:
    prefix: -box
- id: in_column
  doc: set output mode to 'column'
  type: boolean?
  inputBinding:
    prefix: -column
- id: in_cmd
  doc: run "COMMAND" before reading stdin
  type: string?
  inputBinding:
    prefix: -cmd
- id: in_csv
  doc: set output mode to 'csv'
  type: boolean?
  inputBinding:
    prefix: -csv
- id: in_echo
  doc: print commands before execution
  type: boolean?
  inputBinding:
    prefix: -echo
- id: in_in_it
  doc: read/process named file
  type: File?
  inputBinding:
    prefix: -init
- id: in_html
  doc: set output mode to HTML
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_interactive
  doc: force interactive I/O
  type: boolean?
  inputBinding:
    prefix: -interactive
- id: in_json
  doc: set output mode to 'json'
  type: boolean?
  inputBinding:
    prefix: -json
- id: in_line
  doc: set output mode to 'line'
  type: boolean?
  inputBinding:
    prefix: -line
- id: in_list
  doc: set output mode to 'list'
  type: boolean?
  inputBinding:
    prefix: -list
- id: in_lookaside
  doc: N    use N entries of SZ bytes for lookaside memory
  type: long?
  inputBinding:
    prefix: -lookaside
- id: in_markdown
  doc: set output mode to 'markdown'
  type: boolean?
  inputBinding:
    prefix: -markdown
- id: in_mem_trace
  doc: trace all memory allocations and deallocations
  type: boolean?
  inputBinding:
    prefix: -memtrace
- id: in_mmap
  doc: default mmap size set to N
  type: long?
  inputBinding:
    prefix: -mmap
- id: in_new_line
  doc: "set output row separator. Default: '\\n'"
  type: string?
  inputBinding:
    prefix: -newline
- id: in_nofollow
  doc: refuse to open symbolic links to database files
  type: boolean?
  inputBinding:
    prefix: -nofollow
- id: in_null_value
  doc: set text string for NULL values. Default ''
  type: string?
  inputBinding:
    prefix: -nullvalue
- id: in_pagecache
  doc: N    use N slots of SZ bytes each for page cache memory
  type: long?
  inputBinding:
    prefix: -pagecache
- id: in_quote
  doc: set output mode to 'quote'
  type: boolean?
  inputBinding:
    prefix: -quote
- id: in_readonly
  doc: open the database read-only
  type: boolean?
  inputBinding:
    prefix: -readonly
- id: in_separator
  doc: "set output column separator. Default: '|'"
  type: string?
  inputBinding:
    prefix: -separator
- id: in_stats
  doc: print memory stats before each finalize
  type: boolean?
  inputBinding:
    prefix: -stats
- id: in_table
  doc: set output mode to 'table'
  type: boolean?
  inputBinding:
    prefix: -table
- id: in_version
  doc: show SQLite version
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_vfs
  doc: use NAME as the default VFS
  type: string?
  inputBinding:
    prefix: -vfs
- id: in_zip
  doc: open the file as a ZIP Archive
  type: boolean?
  inputBinding:
    prefix: -zip
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sql
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sqlite:3.33.0
cwlVersion: v1.1
baseCommand:
- sqlite3
