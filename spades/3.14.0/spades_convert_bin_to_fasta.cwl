class: CommandLineTool
id: spades_convert_bin_to_fasta.cwl
inputs:
- id: prefix
  doc: Prefix of .off and .seq file for contigs in binary format
  type: File
  inputBinding:
    prefix: --prefix
- id: info_file
  doc: Path to info file for contigs in binary format
  type: File
  inputBinding:
    prefix: --info_file
- id: output_file
  doc: Output file name
  type: File
  inputBinding:
    prefix: --output_file
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-convert-bin-to-fasta
