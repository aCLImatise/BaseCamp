class: CommandLineTool
id: datafunk_remove_fasta.cwl
inputs:
- id: in_input_fast_a
  doc: 'Input file: something about the input file format'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_filter_file
  doc: Filter file for filtering based on filter file
  type: File?
  inputBinding:
    prefix: --filter-file
- id: in_output_fast_a
  doc: Output file name for resulting filtered fasta file
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_verbose
  doc: Run with high verbosity (debug level logging)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fast_a
  doc: Output file name for resulting filtered fasta file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- remove_fasta
