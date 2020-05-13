class: CommandLineTool
id: scran_convert_to.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: type
  doc: 'A string specifying the analysis for which the object should be prepared.
    Any of: "edgeR", "DESeq2", "monocle".'
  type: string
  inputBinding:
    prefix: --type
- id: assay_type
  doc: A string specifying which assay of x should be put in the returned object.
    For edgeR and DESeq2, assay is set to "counts" such that count data is stored
    in the output object
  type: string
  inputBinding:
    prefix: --assay-type
- id: get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string
  inputBinding:
    prefix: --get-spikes
- id: output_converted
  doc: Path to the converted object stored as RDS.
  type: string
  inputBinding:
    prefix: --output-converted
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-convert-to.R
