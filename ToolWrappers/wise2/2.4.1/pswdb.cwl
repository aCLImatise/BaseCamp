class: CommandLineTool
id: pswdb.cwl
inputs:
- id: in_penalty_default
  doc: penalty (default 12)
  type: long
  inputBinding:
    prefix: -g
- id: in_penatly_default
  doc: penatly (default 2)
  type: long
  inputBinding:
    prefix: -e
- id: in_matrix_default_blosumbla
  doc: matrix (default BLOSUM62.bla)
  type: long
  inputBinding:
    prefix: -m
- id: in_abc
  doc: the abc model
  type: string
  inputBinding:
    prefix: -abc
- id: in_penalty_above_default
  doc: a penalty for above (default 120)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_b_penalty_above
  doc: b penalty for above (default 10)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_c_penalty_above
  doc: c penalty for above (default 3)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_pba
  doc: the pba model
  type: string
  inputBinding:
    prefix: -pba
- id: in_max_desc
  doc: of one line descriptions (default = 500)
  type: long
  inputBinding:
    prefix: -max_desc
- id: in_max_aln
  doc: of alignments to show (default = 50)
  type: long
  inputBinding:
    prefix: -max_aln
- id: in_cut
  doc: cutoff (score) (default = 40)
  type: long
  inputBinding:
    prefix: -cut
- id: in_ids
  doc: seq ids with alignments
  type: string
  inputBinding:
    prefix: -ids
- id: in_no_his
  doc: not fit histogram
  type: string
  inputBinding:
    prefix: -nohis
- id: in_serial
  doc: use serial code (single processor)
  type: boolean
  inputBinding:
    prefix: -serial
- id: in_pthread
  doc: use pthread code (SMP box)
  type: boolean
  inputBinding:
    prefix: -pthread
- id: in_p_thr_no
  doc: Number of threads to use
  type: long
  inputBinding:
    prefix: -pthr_no
- id: in_mpi
  doc: use MPI code (distributed memory system)
  type: boolean
  inputBinding:
    prefix: -mpi
- id: in_pvm
  doc: use parallel virtual machine search system
  type: boolean
  inputBinding:
    prefix: -pvm
- id: in_db_trace
  doc: Trace level of the database code (for debugging only)
  type: string
  inputBinding:
    prefix: -dbtrace
- id: in_s_routine
  doc: Search type routine [exact/kbest/forward]
  type: string
  inputBinding:
    prefix: -sroutine
- id: in_dy_mem
  doc: memory style [default/linear/explicit]
  type: boolean
  inputBinding:
    prefix: -dymem
- id: in_kbyte
  doc: memory amount to use [4000]
  type: boolean
  inputBinding:
    prefix: -kbyte
- id: in_dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: in_pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: in_version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: in_silent
  doc: No messages on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: in_quiet
  doc: No report on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: in_error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pswdb
