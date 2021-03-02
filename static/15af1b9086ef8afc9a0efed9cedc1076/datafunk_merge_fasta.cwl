class: CommandLineTool
id: datafunk_merge_fasta.cwl
inputs:
- id: in_folder
  doc: Folder containing all fasta files needed to be merged
  type: Directory?
  inputBinding:
    prefix: --folder
- id: in_input_metadata
  doc: "Input metadata (csv) for validating sequence\ninformation"
  type: string?
  inputBinding:
    prefix: --input-metadata
- id: in_output_fast_a
  doc: Output for merged fasta file
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
  doc: Output for merged fasta file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- merge_fasta
