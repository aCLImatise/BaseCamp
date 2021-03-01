class: CommandLineTool
id: nanonetcall.cwl
inputs:
- id: in_watch
  doc: "Switch to watching folder, argument value used as\ntimeout period. (default:\
    \ None)"
  type: Directory?
  inputBinding:
    prefix: --watch
- id: in_section
  doc: "Section of read for which to produce basecalls, will\noverride that stored\
    \ in model file. (default: None)"
  type: string?
  inputBinding:
    prefix: --section
- id: in_no_event_detect
  doc: "Perform event detection, else use existing event data\n(Default: --event_detect)\
    \ (default: True)"
  type: boolean?
  inputBinding:
    prefix: --no-event_detect
- id: in_output
  doc: "Output name, output will be in fasta format. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --output
- id: in_no_fast_q
  doc: "Output fastq rather than fasta. (Default: --no-fastq)\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-fastq
- id: in_no_write_events
  doc: "Write event datasets to .fast5. (Default: --no-\nwrite_events) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-write_events
- id: in_strand_list
  doc: 'List of reads to process. (default: None)'
  type: string?
  inputBinding:
    prefix: --strand_list
- id: in_limit
  doc: "Limit the number of input for processing. (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --limit
- id: in_min_len
  doc: 'Min. read length (events) to basecall. (default: 500)'
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_max_len
  doc: "Max. read length (events) to basecall. (default:\n15000)"
  type: long?
  inputBinding:
    prefix: --max_len
- id: in_model
  doc: "Trained ANN. (default: /root/.cache/Python-\nEggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-\n\
    tmp/nanonet/data/default_template.npy)"
  type: double?
  inputBinding:
    prefix: --model
- id: in_jobs
  doc: 'No of decoding jobs to run in parallel. (default: 1)'
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_trans
  doc: "step skip\nBase transition probabilities (default: None)"
  type: string?
  inputBinding:
    prefix: --trans
- id: in_no_fast_decode
  doc: "Use simple, fast decoder with no transition estimates.\n(Default: --no-fast_decode)\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-fast_decode
- id: in_no_exc_open_cl
  doc: "Do not use CPU alongside OpenCL, overrides --jobs.\n(Default: --no-exc_opencl)\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-exc_opencl
- id: in_no_list_platforms
  doc: "Output list of available OpenCL GPU platforms.\n(Default: --no-list_platforms)\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-list_platforms
- id: in_platforms
  doc: "List of OpenCL GPU platforms and devices to be used in\na format VENDOR:DEVICE:N_Files\
    \ space separated, i.e.\n--platforms nvidia:0:1 amd:0:2 amd:1:2. (default:\nNone)\n"
  type: string[]
  inputBinding:
    prefix: --platforms
- id: in_input
  doc: 'A path to fast5 files. (default: None)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nanonetcall
