class: CommandLineTool
id: sccaf_regress_out.cwl
inputs:
- id: in_input_file
  doc: Path to input in AnnData or Loom
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: Path for output file for annData with regression done.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_keys_to_regress
  doc: "Keys to regress out, comma separated. They should be\nin the anndata object.\n"
  type: string?
  inputBinding:
    prefix: --keys-to-regress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path for output file for annData with regression done.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sccaf-regress-out
