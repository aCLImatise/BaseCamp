class: CommandLineTool
id: ../../../mtsv_build.cwl
inputs:
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_fast_a
  doc: Path to FASTA database file.
  type: File
  inputBinding:
    prefix: --fasta
- id: in_sample_interval
  doc: "Sampling interval for index generation. Smaller = more memory usage, slightly\
    \  faster queries. Larger = less\nmemory usage slightly slower queries. [default:\
    \ 32]"
  type: long
  inputBinding:
    prefix: --sample-interval
- id: in_index
  doc: Absolute path to mtsv index file.
  type: File
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-build
