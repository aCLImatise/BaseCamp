class: CommandLineTool
id: nanonet2d.cwl
inputs:
- id: input
  doc: 'A path to fast5 files. (default: None)'
  type: string
  inputBinding:
    position: 0
- id: output_prefix
  doc: Output prefix, output will be in fasta format.
  type: string
  inputBinding:
    position: 1
- id: no_fast_q
  doc: 'Output fastq rather than fasta. (Default: --no-fastq) (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-fastq
- id: watch
  doc: 'Switch to watching folder, argument value used as timeout period. (default:
    None)'
  type: string
  inputBinding:
    prefix: --watch
- id: section
  doc: 'Section of read for which to produce basecalls, will override that stored
    in model file. (default: None)'
  type: string
  inputBinding:
    prefix: --section
- id: no_event_detect
  doc: 'Perform event detection, else use existing event data (Default: --event_detect)
    (default: True)'
  type: boolean
  inputBinding:
    prefix: --no-event_detect
- id: no_write_events
  doc: 'Write event datasets to .fast5. (Default: --no- write_events) (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-write_events
- id: strand_list
  doc: 'List of reads to process. (default: None)'
  type: string
  inputBinding:
    prefix: --strand_list
- id: limit
  doc: 'Limit the number of input for processing. (default: None)'
  type: string
  inputBinding:
    prefix: --limit
- id: min_len
  doc: 'Min. read length (events) to basecall. (default: 500)'
  type: long
  inputBinding:
    prefix: --min_len
- id: max_len
  doc: 'Max. read length (events) to basecall. (default: 15000)'
  type: long
  inputBinding:
    prefix: --max_len
- id: template_model
  doc: 'Trained ANN. (default: /home/ubuntu/.cache/Python- Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-
    tmp/nanonet/data/default_template.npy)'
  type: string
  inputBinding:
    prefix: --template_model
- id: complement_model
  doc: 'Trained ANN. (default: /home/ubuntu/.cache/Python- Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-
    tmp/nanonet/data/default_complement.npy)'
  type: string
  inputBinding:
    prefix: --complement_model
- id: jobs
  doc: 'No of decoding jobs to run in parallel. (default: 1)'
  type: string
  inputBinding:
    prefix: --jobs
- id: no_open_cl_2d
  doc: 'Use OpenCL for 2D calls. (Default: --no-opencl_2d) (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-opencl_2d
- id: trans
  doc: 'step skip Base transition probabilities (default: None)'
  type: string
  inputBinding:
    prefix: --trans
- id: no_fast_decode
  doc: 'Use simple, fast decoder with no transition estimates. (Default: --no-fast_decode)
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-fast_decode
outputs: []
cwlVersion: v1.1
baseCommand:
- nanonet2d
