class: CommandLineTool
id: cbImportScanpy.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_in_file
  doc: input .h5ad file. Required parameter
  type: File?
  inputBinding:
    prefix: --inFile
- id: in_proc
  doc: "when exporting, do not use the raw input data, instead\nuse the normalized\
    \ and corrected matrix scanpy. This\nhas no effect if the anndata.raw attribute\
    \ is not used\nin the anndata object"
  type: boolean?
  inputBinding:
    prefix: --proc
- id: in_outdir
  doc: Output directory. Required parameter
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_name
  doc: "Dataset name for generated cellbrowser.conf. If not\nspecified, the last component\
    \ of -o will be used."
  type: string?
  inputBinding:
    prefix: --name
- id: in_only_convert_tabsep
  doc: "do not only convert to tab-sep files but also run\ncbBuild toconvert the data\
    \ and add the dataset under\nhtmlDir"
  type: string?
  inputBinding:
    prefix: --htmlDir
- id: in_port
  doc: 'only with --htmlDir: start webserver on port to serve'
  type: string?
  inputBinding:
    prefix: --port
- id: in__markerfieldmarkerfield
  doc: --markerField=MARKERFIELD
  type: string
  inputBinding:
    position: 0
- id: in_rank_genes_groups
  doc: --clusterField=CLUSTERFIELD
  type: string
  inputBinding:
    position: 0
- id: in_others
  doc: -m, --skipMatrix      do not convert the matrix, saves time if the same one
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory. Required parameter
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0
cwlVersion: v1.1
baseCommand:
- cbImportScanpy
