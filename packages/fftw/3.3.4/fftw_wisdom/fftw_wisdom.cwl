class: CommandLineTool
id: fftw_wisdom.cwl
inputs:
- id: in_verbose
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_canonical
  doc: ': plan/optimize canonical set of sizes'
  type: boolean
  inputBinding:
    prefix: --canonical
- id: in_time_limit
  doc: ': time limit in hours (default: 0, no limit)'
  type: long
  inputBinding:
    prefix: --time-limit
- id: in_output_file
  doc: ': output to FILE instead of stdout'
  type: File
  inputBinding:
    prefix: --output-file
- id: in_measure
  doc: ': plan in MEASURE mode (PATIENT is default)'
  type: boolean
  inputBinding:
    prefix: --measure
- id: in_estimate
  doc: ': plan in ESTIMATE mode (not recommended)'
  type: boolean
  inputBinding:
    prefix: --estimate
- id: in_exhaustive
  doc: ': plan in EXHAUSTIVE mode (may be slow)'
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: in_no_system_wisdom
  doc: ": don't read /etc/fftw/ system wisdom file"
  type: boolean
  inputBinding:
    prefix: --no-system-wisdom
- id: in_wisdom_file
  doc: ': read wisdom from FILE (stdin if -)'
  type: File
  inputBinding:
    prefix: --wisdom-file
- id: in_threads
  doc: ': plan with N threads'
  type: string
  inputBinding:
    prefix: --threads
- id: in_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ': output to FILE instead of stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- fftw-wisdom
