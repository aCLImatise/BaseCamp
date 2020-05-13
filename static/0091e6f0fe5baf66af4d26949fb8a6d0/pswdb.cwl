class: CommandLineTool
id: pswdb.cwl
inputs:
- id: g
  doc: penalty (default 12)
  type: string
  inputBinding:
    prefix: -g
- id: e
  doc: penatly (default 2)
  type: string
  inputBinding:
    prefix: -e
- id: m
  doc: matrix (default BLOSUM62.bla)
  type: string
  inputBinding:
    prefix: -m
- id: abc
  doc: the abc model
  type: string
  inputBinding:
    prefix: -abc
- id: a
  doc: a penalty for above (default 120)
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: b penalty for above (default 10)
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: c penalty for above (default 3)
  type: boolean
  inputBinding:
    prefix: -c
- id: pba
  doc: the pba model
  type: string
  inputBinding:
    prefix: -pba
- id: max_desc
  doc: of one line descriptions (default = 500)
  type: string
  inputBinding:
    prefix: -max_desc
- id: max_aln
  doc: of alignments to show (default = 50)
  type: string
  inputBinding:
    prefix: -max_aln
- id: cut
  doc: cutoff (score) (default = 40)
  type: string
  inputBinding:
    prefix: -cut
- id: ids
  doc: seq ids with alignments
  type: string
  inputBinding:
    prefix: -ids
- id: no_his
  doc: not fit histogram
  type: string
  inputBinding:
    prefix: -nohis
- id: serial
  doc: use serial code (single processor)
  type: boolean
  inputBinding:
    prefix: -serial
- id: pthread
  doc: use pthread code (SMP box)
  type: boolean
  inputBinding:
    prefix: -pthread
- id: p_thr_no
  doc: Number of threads to use
  type: string
  inputBinding:
    prefix: -pthr_no
- id: mpi
  doc: use MPI code (distributed memory system)
  type: boolean
  inputBinding:
    prefix: -mpi
- id: pvm
  doc: use parallel virtual machine search system
  type: boolean
  inputBinding:
    prefix: -pvm
- id: db_trace
  doc: Trace level of the database code (for debugging only)
  type: string
  inputBinding:
    prefix: -dbtrace
- id: s_routine
  doc: Search type routine [exact/kbest/forward]
  type: string
  inputBinding:
    prefix: -sroutine
- id: dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: silent
  doc: No messages on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: quiet
  doc: No report on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
outputs: []
cwlVersion: v1.1
baseCommand:
- pswdb
