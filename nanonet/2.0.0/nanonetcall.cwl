#!/usr/bin/env cwl-runner

baseCommand:
- nanonetcall
class: CommandLineTool
cwlVersion: v1.0
id: nanonetcall
inputs:
- doc: 'A path to fast5 files. (default: None)'
  id: input
  inputBinding:
    position: 0
  type: string
- doc: 'Switch to watching folder, argument value used as timeout period. (default:
    None)'
  id: watch
  inputBinding:
    prefix: --watch
  type: string
- doc: 'Section of read for which to produce basecalls, will override that stored
    in model file. (default: None)'
  id: section
  inputBinding:
    prefix: --section
  type: string
- doc: 'Perform event detection, else use existing event data (Default: --event_detect)
    (default: True)'
  id: no_event_detect
  inputBinding:
    prefix: --no-event_detect
  type: boolean
- doc: 'Output name, output will be in fasta format. (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Output fastq rather than fasta. (Default: --no-fastq) (default: False)'
  id: no_fast_q
  inputBinding:
    prefix: --no-fastq
  type: boolean
- doc: 'Write event datasets to .fast5. (Default: --no- write_events) (default: False)'
  id: no_write_events
  inputBinding:
    prefix: --no-write_events
  type: boolean
- doc: 'List of reads to process. (default: None)'
  id: strand_list
  inputBinding:
    prefix: --strand_list
  type: string
- doc: 'Limit the number of input for processing. (default: None)'
  id: limit
  inputBinding:
    prefix: --limit
  type: string
- doc: 'Min. read length (events) to basecall. (default: 500)'
  id: min_len
  inputBinding:
    prefix: --min_len
  type: long
- doc: 'Max. read length (events) to basecall. (default: 15000)'
  id: max_len
  inputBinding:
    prefix: --max_len
  type: long
- doc: 'Trained ANN. (default: /home/ubuntu/.cache/Python- Eggs/nanonet-2.0.0-py2.7-linux-x86_64.egg-
    tmp/nanonet/data/default_template.npy)'
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: 'No of decoding jobs to run in parallel. (default: 1)'
  id: jobs
  inputBinding:
    prefix: --jobs
  type: string
- doc: 'step skip Base transition probabilities (default: None)'
  id: trans
  inputBinding:
    prefix: --trans
  type: string
- doc: 'Use simple, fast decoder with no transition estimates. (Default: --no-fast_decode)
    (default: False)'
  id: no_fast_decode
  inputBinding:
    prefix: --no-fast_decode
  type: boolean
- doc: 'Do not use CPU alongside OpenCL, overrides --jobs. (Default: --no-exc_opencl)
    (default: False)'
  id: no_exc_open_cl
  inputBinding:
    prefix: --no-exc_opencl
  type: boolean
- doc: 'Output list of available OpenCL GPU platforms. (Default: --no-list_platforms)
    (default: False)'
  id: no_list_platforms
  inputBinding:
    prefix: --no-list_platforms
  type: boolean
- doc: 'List of OpenCL GPU platforms and devices to be used in a format VENDOR:DEVICE:N_Files
    space separated, i.e. --platforms nvidia:0:1 amd:0:2 amd:1:2. (default: None)'
  id: platforms
  inputBinding:
    prefix: --platforms
  type:
    items: string
    type: array
