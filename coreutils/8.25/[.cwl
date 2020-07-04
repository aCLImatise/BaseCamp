class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/[.cwl
inputs:
- id: file_exists_block
  doc: FILE exists and is block special
  type: File
  inputBinding:
    prefix: -b
- id: file_exists_character
  doc: FILE exists and is character special
  type: File
  inputBinding:
    prefix: -c
- id: file_exists_directory
  doc: FILE exists and is a directory
  type: File
  inputBinding:
    prefix: -d
- id: file_exists
  doc: FILE exists
  type: File
  inputBinding:
    prefix: -e
- id: file_exists_regular
  doc: FILE exists and is a regular file
  type: File
  inputBinding:
    prefix: -f
- id: file_exists_setgroupid
  doc: FILE exists and is set-group-ID
  type: File
  inputBinding:
    prefix: -g
- id: effective_group_id
  doc: FILE exists and is owned by the effective group ID
  type: File
  inputBinding:
    prefix: -G
- id: file_exists_l
  doc: FILE exists and is a symbolic link (same as -L)
  type: File
  inputBinding:
    prefix: -h
- id: file_exists_sticky
  doc: FILE exists and has its sticky bit set
  type: File
  inputBinding:
    prefix: -k
- id: file_exists_h
  doc: FILE exists and is a symbolic link (same as -h)
  type: File
  inputBinding:
    prefix: -L
- id: effective_user_id
  doc: FILE exists and is owned by the effective user ID
  type: File
  inputBinding:
    prefix: -O
- id: file_exists_named
  doc: FILE exists and is a named pipe
  type: File
  inputBinding:
    prefix: -p
- id: file_exists_read
  doc: FILE exists and read permission is granted
  type: File
  inputBinding:
    prefix: -r
- id: file_exists_size
  doc: FILE exists and has a size greater than zero
  type: File
  inputBinding:
    prefix: -s
- id: file_exists_socket
  doc: FILE exists and is a socket
  type: File
  inputBinding:
    prefix: -S
- id: file_descriptor_fd
  doc: file descriptor FD is opened on a terminal
  type: string
  inputBinding:
    prefix: -t
- id: file_exists_bit
  doc: FILE exists and its set-user-ID bit is set
  type: File
  inputBinding:
    prefix: -u
- id: file_exists_write
  doc: FILE exists and write permission is granted
  type: File
  inputBinding:
    prefix: -w
- id: file_exists_execute
  doc: FILE exists and execute (or search) permission is granted
  type: File
  inputBinding:
    prefix: -x
- id: test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: expression
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- '['
