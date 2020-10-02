class: CommandLineTool
id: ribo_try.cwl
inputs:
- id: in_output
  doc: 'output directory; default: /riboSeed_sample_results'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_cores
  doc: 'cores to be used; default: 2'
  type: long
  inputBinding:
    prefix: --cores
- id: in_threads
  doc: "if your cores are hyperthreaded, set number threads to\nthe number of threads\
    \ per processer.If unsure, see\n'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\n\
    under 'Thread(s) per core'.: 1"
  type: string
  inputBinding:
    prefix: --threads
- id: in_memory
  doc: 'system memory available; default: 8'
  type: long
  inputBinding:
    prefix: --memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory; default: /riboSeed_sample_results'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  outputBinding:
    glob: $(inputs.in_verbosity)
cwlVersion: v1.1
baseCommand:
- ribo
- try
