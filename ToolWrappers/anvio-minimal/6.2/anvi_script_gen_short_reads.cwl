class: CommandLineTool
id: anvi_script_gen_short_reads.cwl
inputs:
- id: in_output_file_path
  doc: "Output FASTA file path\n"
  type: File?
  inputBinding:
    prefix: --output-file-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_path
  doc: "Output FASTA file path\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_path)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-short-reads
