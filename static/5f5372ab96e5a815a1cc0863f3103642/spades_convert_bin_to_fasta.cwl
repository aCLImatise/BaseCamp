class: CommandLineTool
id: spades_convert_bin_to_fasta.cwl
inputs:
- id: in_prefix
  doc: Prefix of .off and .seq file for contigs in binary format
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_info_file
  doc: Path to info file for contigs in binary format
  type: File?
  inputBinding:
    prefix: --info_file
- id: in_output_file
  doc: Output file name
  type: File?
  inputBinding:
    prefix: --output_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spades-convert-bin-to-fasta
