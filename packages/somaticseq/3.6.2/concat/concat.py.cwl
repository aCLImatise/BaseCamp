class: CommandLineTool
id: concat.py.cwl
inputs:
- id: in_in_files
  doc: "[INPUT_FILES [INPUT_FILES ...]], --input-files [INPUT_FILES [INPUT_FILES ...]]\n\
    Input files (default: None)"
  type: boolean?
  inputBinding:
    prefix: -infiles
- id: in_output_file
  doc: 'Output file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_out_files
  doc: "[OUTPUT_FILES [OUTPUT_FILES ...]], --output-files [OUTPUT_FILES [OUTPUT_FILES\
    \ ...]]\nOutput files for spreader (default: None)"
  type: boolean?
  inputBinding:
    prefix: -outfiles
- id: in_chunk_size
  doc: "In --spread mode, the number of lines to be written\ninto the output file\
    \ each time. By default chunk=4 by\ndefault for fastq files, i.e., every 4 lines\
    \ make up\none read record. (default: 4)"
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_threads
  doc: "only invoked in -spread -bgzip when bgzip compress of\noutput files can be\
    \ parallelized (default: None)"
  type: string?
  inputBinding:
    prefix: --threads
- id: in_spread
  doc: 'Spread content into multiple files. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --spread
- id: in_b_gzip_output
  doc: "compress the output files (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --bgzip-output
- id: in_input_files
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- concat.py
