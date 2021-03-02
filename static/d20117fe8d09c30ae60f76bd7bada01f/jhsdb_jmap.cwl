class: CommandLineTool
id: jhsdb_jmap.cwl
inputs:
- id: in_heap
  doc: to print java heap summary
  type: boolean?
  inputBinding:
    prefix: --heap
- id: in_binary_heap
  doc: to dump java heap in hprof binary format
  type: boolean?
  inputBinding:
    prefix: --binaryheap
- id: in_dumpfile
  doc: name of the dump file
  type: boolean?
  inputBinding:
    prefix: --dumpfile
- id: in_histo
  doc: to print histogram of java object heap
  type: boolean?
  inputBinding:
    prefix: --histo
- id: in_cl_stats
  doc: to print class loader statistics
  type: boolean?
  inputBinding:
    prefix: --clstats
- id: in_finalizer_info
  doc: to print information on objects awaiting finalization
  type: boolean?
  inputBinding:
    prefix: --finalizerinfo
- id: in_exe
  doc: executable image name
  type: boolean?
  inputBinding:
    prefix: --exe
- id: in_core
  doc: path to coredump
  type: boolean?
  inputBinding:
    prefix: --core
- id: in_pid
  doc: pid of process to attach
  type: boolean?
  inputBinding:
    prefix: --pid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jhsdb
- jmap
