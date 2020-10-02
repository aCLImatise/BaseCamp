class: CommandLineTool
id: parasol.cwl
inputs:
- id: in_in
  doc: '- Where to get stdin, default /dev/null'
  type: string
  inputBinding:
    prefix: -in
- id: in_out
  doc: '- Where to put stdout, default /dev/null'
  type: string
  inputBinding:
    prefix: -out
- id: in_wait
  doc: '- If set wait for job to finish to return and return with job status code'
  type: boolean
  inputBinding:
    prefix: -wait
- id: in_err
  doc: '- set stderr to out file - only works with wait flag'
  type: File
  inputBinding:
    prefix: -err
- id: in_verbose
  doc: '- set verbosity level, default level is 1'
  type: long
  inputBinding:
    prefix: -verbose
- id: in_print_id
  doc: '- prints jobId to stdout'
  type: boolean
  inputBinding:
    prefix: -printId
- id: in_dir
  doc: '- set output results dir, default is current dir'
  type: string
  inputBinding:
    prefix: -dir
- id: in_results
  doc: "fully qualified path to the results file,\nor `results' in the current directory\
    \ if not specified."
  type: File
  inputBinding:
    prefix: -results
- id: in_cpu
  doc: Number of CPUs used by the jobs, default 1.
  type: long
  inputBinding:
    prefix: -cpu
- id: in_ram
  doc: "Number of bytes of RAM used by the jobs.\nDefault is RAM on node divided by\
    \ number of cpus on node.\nShorthand expressions allow t,g,m,k for tera, giga,\
    \ mega, kilo.\ne.g. 4g = 4 Gigabytes."
  type: long
  inputBinding:
    prefix: -ram
- id: in_host
  doc: "- connect to a paraHub process on a remote host instead\nlocalhost."
  type: string
  inputBinding:
    prefix: -host
- id: in_or
  doc: parasol add machine machineFullHostName cpus ramSizeMB localTempDir localDir
    localSizeMB switchName
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_err
  doc: '- set stderr to out file - only works with wait flag'
  type: File
  outputBinding:
    glob: $(inputs.in_err)
cwlVersion: v1.1
baseCommand:
- parasol
