class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sccaf_regress_out.cwl
inputs:
- id: input_file
  doc: Path to input in AnnData or Loom
  type: string
  inputBinding:
    prefix: --input-file
- id: output_file
  doc: Path for output file for annData with regression done.
  type: string
  inputBinding:
    prefix: --output-file
- id: keys_to_regress
  doc: Keys to regress out, comma separated. They should be in the anndata object.
  type: string
  inputBinding:
    prefix: --keys-to-regress
outputs: []
cwlVersion: v1.1
baseCommand:
- sccaf-regress-out
