class: CommandLineTool
id: lckdo.cwl
inputs:
- id: in_lock_already_held
  doc: "- if the lock is already held by another process,\nwait for it to complete\
    \ instead of failing immediately"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_same_w_wait
  doc: '- the same as -w but wait not more than sec seconds'
  type: string
  inputBinding:
    prefix: -W
- id: in_execute_program_directly
  doc: "- execute the program directly, no fork/wait\n(keeps extra open file descriptor)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_set_fd_keep
  doc: '- set the fd# to keep open in -e case (implies -e)'
  type: string
  inputBinding:
    prefix: -E
- id: in_create_lock_file
  doc: '- do not create the lock file if it does not exist'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_produce_output_held
  doc: '- produce no output if lock is already held'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_lock_shared_read
  doc: '- lock in shared (read) mode'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_lock_exclusive_write
  doc: '- lock in exclusive (write) mode (default)'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_test_lock_existence
  doc: "- test for lock existence (just prints pid if any with -q)\n(implies -n)\n"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_lock_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lckdo
