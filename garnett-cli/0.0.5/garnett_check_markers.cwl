class: CommandLineTool
id: garnett_check_markers.R.cwl
inputs:
- id: database
  doc: argument for Bioconductor AnnotationDb-class package used for converting gene
    IDs. For example, use org.Hs.eg.db for Homo Sapiens genes.
  type: string
  inputBinding:
    prefix: --database
- id: cds_gene_id_type
  doc: Format of the gene IDs in your CDS object. The default is "ENSEMBL".
  type: string
  inputBinding:
    prefix: --cds-gene-id-type
- id: marker_file_gene_id_type
  doc: Format of the gene IDs in your marker file. The default is "ENSEMBL".
  type: string
  inputBinding:
    prefix: --marker-file-gene-id-type
- id: marker_output_path
  doc: Path to the output file with marker scores
  type: string
  inputBinding:
    prefix: --marker-output-path
- id: plot_output_path
  doc: Optional. If you would like to make a marker plot, provide a name (path) for
    it.
  type: string
  inputBinding:
    prefix: --plot-output-path
- id: propogate_markers
  doc: 'Optional. Should markers from child nodes of a cell type be used in finding
    representatives of the parent type? Default: TRUE.'
  type: boolean
  inputBinding:
    prefix: --propogate-markers
- id: use_tf_idf
  doc: 'Optional. Should TF-IDF matrix be calculated during estimation? If TRUE, estimates
    will be more accurate, but calculation is slower with very large datasets. Default:
    TRUE.'
  type: boolean
  inputBinding:
    prefix: --use-tf-idf
- id: classifier_gene_id_type
  doc: Optional. The type of gene ID that will be used in the classifier. If possible
    for your organism, this should be 'ENSEMBL', which is the default. Ignored if
    db = 'none'.
  type: string
  inputBinding:
    prefix: --classifier-gene-id-type
- id: amb_marker_cut_off
  doc: (Plotting option). Numeric; Cutoff at which to label ambiguous markers. Default
    0.5.
  type: string
  inputBinding:
    prefix: --amb-marker-cutoff
- id: label_size
  doc: (Plotting option). Numeric, size of the text labels for ambiguous markers and
    unplotted markers.
  type: string
  inputBinding:
    prefix: --label-size
outputs: []
cwlVersion: v1.1
baseCommand:
- garnett_check_markers.R
