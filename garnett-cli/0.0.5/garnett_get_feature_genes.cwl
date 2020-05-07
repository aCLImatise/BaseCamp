class: CommandLineTool
id: garnett_get_feature_genes.R.cwl
inputs:
- id: classifier_object
  doc: path to the object of class garnett_classifier, which is either trained via
    garnett_train_classifier.R or obtained previously
  type: string
  inputBinding:
    prefix: --classifier-object
- id: node
  doc: In case a hierarchical marker tree was used to train the  classifier, specify
    which node features should be shown. Default is 'root'. For other nodes, use the
    corresponding parent cell type name
  type: string
  inputBinding:
    prefix: --node
- id: database
  doc: argument for Bioconductor AnnotationDb-class package used for converting gene
    IDs. For example, use org.Hs.eg.db for Homo Sapiens genes.
  type: string
  inputBinding:
    prefix: --database
- id: convert_ids
  doc: 'Boolean that indicates whether the gene IDs should be converted into SYMBOL
    notation. Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --convert-ids
- id: output_path
  doc: Path to the output file
  type: string
  inputBinding:
    prefix: --output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- garnett_get_feature_genes.R
