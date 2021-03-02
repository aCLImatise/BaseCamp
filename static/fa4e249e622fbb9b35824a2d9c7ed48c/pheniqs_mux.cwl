class: CommandLineTool
id: pheniqs_mux.cwl
inputs:
- id: in_input
  doc: Path to an input file. May be repeated.
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Path to an output file. May be repeated.
  type: File?
  inputBinding:
    prefix: --output
- id: in_config
  doc: Path to configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_report
  doc: Path to report file
  type: File?
  inputBinding:
    prefix: --report
- id: in_prior
  doc: Path to adjusted prior job file
  type: File?
  inputBinding:
    prefix: --prior
- id: in_base_input
  doc: Base input url
  type: string?
  inputBinding:
    prefix: --base-input
- id: in_base_output
  doc: Base output url
  type: string?
  inputBinding:
    prefix: --base-output
- id: in_sense_input
  doc: Sense input segment layout
  type: boolean?
  inputBinding:
    prefix: --sense-input
- id: in_no_output_npf
  doc: Filter outgoing QC failed reads
  type: boolean?
  inputBinding:
    prefix: --no-output-npf
- id: in_no_input_npf
  doc: Filter incoming QC failed reads.
  type: boolean?
  inputBinding:
    prefix: --no-input-npf
- id: in_leading
  doc: Leading read segment index
  type: long?
  inputBinding:
    prefix: --leading
- id: in_format
  doc: Defult output format
  type: string?
  inputBinding:
    prefix: --format
- id: in_compression
  doc: Defult output compression
  type: string?
  inputBinding:
    prefix: --compression
- id: in_level
  doc: Defult output compression level
  type: string?
  inputBinding:
    prefix: --level
- id: in_token
  doc: :START:END    Output read token
  type: string?
  inputBinding:
    prefix: --token
- id: in_platform
  doc: Sequencing platform
  type: string?
  inputBinding:
    prefix: --platform
- id: in_quality
  doc: Enable quality control
  type: boolean?
  inputBinding:
    prefix: --quality
- id: in_validate
  doc: Validate configuration file and emit a report
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_distance
  doc: Display pairwise barcode distance during validation
  type: boolean?
  inputBinding:
    prefix: --distance
- id: in_compile
  doc: Compiled JSON configuration file
  type: boolean?
  inputBinding:
    prefix: --compile
- id: in_static
  doc: Static configuration JSON file
  type: boolean?
  inputBinding:
    prefix: --static
- id: in_job
  doc: Include a copy of the compiled job in the report
  type: boolean?
  inputBinding:
    prefix: --job
- id: in_threads
  doc: Thread pool size
  type: long?
  inputBinding:
    prefix: --threads
- id: in_decoding_threads
  doc: Number of parallel decoding threads
  type: long?
  inputBinding:
    prefix: --decoding-threads
- id: in_hts_lib_threads
  doc: Size of htslib thread pool size
  type: long?
  inputBinding:
    prefix: --htslib-threads
- id: in_buffer
  doc: Feed buffer capacity
  type: long?
  inputBinding:
    prefix: --buffer
- id: in_precision
  doc: Output floating point precision
  type: long?
  inputBinding:
    prefix: --precision
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to an output file. May be repeated.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pheniqs:2.1.0--py37h53c62ea_0
cwlVersion: v1.1
baseCommand:
- pheniqs
- mux
