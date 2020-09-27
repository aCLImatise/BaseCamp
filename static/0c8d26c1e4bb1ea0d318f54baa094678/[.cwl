class: CommandLineTool
id: '[.cwl'
inputs:
- id: in_length_string_nonzero
  doc: the length of STRING is nonzero
  type: long
  inputBinding:
    prefix: -n
- id: in_length_string_zero
  doc: the length of STRING is zero
  type: long
  inputBinding:
    prefix: -z
- id: in_file_exists_block
  doc: FILE exists and is block special
  type: File
  inputBinding:
    prefix: -b
- id: in_file_exists_character
  doc: FILE exists and is character special
  type: File
  inputBinding:
    prefix: -c
- id: in_file_exists_directory
  doc: FILE exists and is a directory
  type: File
  inputBinding:
    prefix: -d
- id: in_file_exists
  doc: FILE exists
  type: File
  inputBinding:
    prefix: -e
- id: in_file_exists_regular
  doc: FILE exists and is a regular file
  type: File
  inputBinding:
    prefix: -f
- id: in_file_exists_setgroupid
  doc: FILE exists and is set-group-ID
  type: File
  inputBinding:
    prefix: -g
- id: in_file_effective_group
  doc: FILE exists and is owned by the effective group ID
  type: File
  inputBinding:
    prefix: -G
- id: in_file_exists_l
  doc: FILE exists and is a symbolic link (same as -L)
  type: File
  inputBinding:
    prefix: -h
- id: in_file_exists_sticky
  doc: FILE exists and has its sticky bit set
  type: File
  inputBinding:
    prefix: -k
- id: in_file_exists_h
  doc: FILE exists and is a symbolic link (same as -h)
  type: File
  inputBinding:
    prefix: -L
- id: in_file_exists_modified
  doc: FILE exists and has been modified since it was last read
  type: File
  inputBinding:
    prefix: -N
- id: in_file_exists_user
  doc: FILE exists and is owned by the effective user ID
  type: File
  inputBinding:
    prefix: -O
- id: in_file_exists_named
  doc: FILE exists and is a named pipe
  type: File
  inputBinding:
    prefix: -p
- id: in_file_exists_read
  doc: FILE exists and read permission is granted
  type: File
  inputBinding:
    prefix: -r
- id: in_file_exists_size
  doc: FILE exists and has a size greater than zero
  type: File
  inputBinding:
    prefix: -s
- id: in_file_exists_socket
  doc: FILE exists and is a socket
  type: File
  inputBinding:
    prefix: -S
- id: in_file_descriptor_fd
  doc: file descriptor FD is opened on a terminal
  type: File
  inputBinding:
    prefix: -t
- id: in_file_exists_set
  doc: FILE exists and its set-user-ID bit is set
  type: File
  inputBinding:
    prefix: -u
- id: in_file_exists_write
  doc: FILE exists and write permission is granted
  type: File
  inputBinding:
    prefix: -w
- id: in_file_exists_execute
  doc: FILE exists and execute (or search) permission is granted
  type: File
  inputBinding:
    prefix: -x
- id: in_string
  doc: equivalent to -n STRING
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- '['
