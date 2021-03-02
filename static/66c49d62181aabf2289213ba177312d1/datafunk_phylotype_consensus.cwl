class: CommandLineTool
id: datafunk_phylotype_consensus.cwl
inputs:
- id: in_input_fast_a
  doc: Fasta file for splitting into phylotypes
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_input_metadata
  doc: Input metadata (csv) with phylotype information
  type: string?
  inputBinding:
    prefix: --input-metadata
- id: in_clade_file
  doc: Clade file stating the phylotypes needed to be grouped
  type: File?
  inputBinding:
    prefix: --clade-file
- id: in_output_folder
  doc: "Output folder for the phylotype fasta files and\nconsensus file"
  type: Directory?
  inputBinding:
    prefix: --output-folder
- id: in_verbose
  doc: Run with high verbosity (debug level logging)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Output folder for the phylotype fasta files and\nconsensus file"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- phylotype_consensus
