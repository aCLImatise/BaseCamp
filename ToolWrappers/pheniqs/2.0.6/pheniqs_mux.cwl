class: CommandLineTool
id: pheniqs_mux.cwl
inputs:
- id: in_input
  doc: Path to an input file. May be repeated.
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Path to an output file. May be repeated.
  type: File
  inputBinding:
    prefix: --output
- id: in_config
  doc: Path to configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_report
  doc: Path to report file
  type: File
  inputBinding:
    prefix: --report
- id: in_base_input
  doc: Base input url
  type: string
  inputBinding:
    prefix: --base-input
- id: in_base_output
  doc: Base output url
  type: string
  inputBinding:
    prefix: --base-output
- id: in_sense_input
  doc: Sense input segment layout
  type: boolean
  inputBinding:
    prefix: --sense-input
- id: in_filtered
  doc: Include reads not passing vendor QC in output
  type: boolean
  inputBinding:
    prefix: --filtered
- id: in_leading
  doc: Leading read segment index
  type: long
  inputBinding:
    prefix: --leading
- id: in_format
  doc: Defult output format
  type: string
  inputBinding:
    prefix: --format
- id: in_compression
  doc: Defult output compression
  type: string
  inputBinding:
    prefix: --compression
- id: in_token
  doc: :START:END    Output read token
  type: string
  inputBinding:
    prefix: --token
- id: in_platform
  doc: Sequencing platform
  type: string
  inputBinding:
    prefix: --platform
- id: in_quality
  doc: Enable quality control
  type: boolean
  inputBinding:
    prefix: --quality
- id: in_validate
  doc: Validate configuration file and emit a report
  type: boolean
  inputBinding:
    prefix: --validate
- id: in_distance
  doc: Display pairwise barcode distance during validation
  type: boolean
  inputBinding:
    prefix: --distance
- id: in_compile
  doc: Compiled JSON configuration file
  type: boolean
  inputBinding:
    prefix: --compile
- id: in_static
  doc: Static configuration JSON file
  type: boolean
  inputBinding:
    prefix: --static
- id: in_job
  doc: Include a copy of the compiled job in the report
  type: boolean
  inputBinding:
    prefix: --job
- id: in_threads
  doc: Thread pool size
  type: long
  inputBinding:
    prefix: --threads
- id: in_buffer
  doc: Feed buffer capacity
  type: long
  inputBinding:
    prefix: --buffer
- id: in_precision
  doc: Output floating point precision
  type: long
  inputBinding:
    prefix: --precision
- id: in_i_slash_input
  doc: to /dev/stdin with inputing layout sensing.
  type: string
  inputBinding:
    prefix: -i/--input
- id: in_oslash_output
  doc: to /dev/stdout with SAM format.
  type: string
  inputBinding:
    prefix: -o/--output
- id: in_oslash_base_output
  doc: to the working directory.
  type: Directory
  inputBinding:
    prefix: -O/--base-output
- id: in_v_slash_validate
  doc: job excution and only emit information.
  type: string
  inputBinding:
    prefix: -V/--validate
- id: in_s_slash_sense_input
  doc: guess input layout by examining the first few reads of each input file.
  type: File
  inputBinding:
    prefix: -s/--sense-input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to an output file. May be repeated.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pheniqs
- mux
