class: CommandLineTool
id: scran_convert_to.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in rds format.
  type: File
  inputBinding:
    prefix: --input-sce-object
- id: in_type
  doc: 'A string specifying the analysis for which the object should be prepared.
    Any of: "edgeR", "DESeq2", "monocle".'
  type: string
  inputBinding:
    prefix: --type
- id: in_assay_type
  doc: A string specifying which assay of x should be put in the returned object.
    For edgeR and DESeq2, assay is set to "counts" such that count data is stored
    in the output object
  type: string
  inputBinding:
    prefix: --assay-type
- id: in_get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string
  inputBinding:
    prefix: --get-spikes
- id: in_output_converted
  doc: Path to the converted object stored as RDS.
  type: File
  inputBinding:
    prefix: --output-converted
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scran-convert-to.R
