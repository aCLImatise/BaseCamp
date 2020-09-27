class: CommandLineTool
id: cbScanpy.cwl
inputs:
- id: in_expr_matrix
  doc: "gene-cell expression matrix file, possible formats:\n.csv, .h5, .mtx, .txt,\
    \ .tab, .loom, .h5ad. Existing\nmeta data from .loom and .h5ad will be kept and\n\
    exported."
  type: File
  inputBinding:
    prefix: --exprMatrix
- id: in_meta
  doc: "name of cell meta data table. A table like tsv or csv\nformat, first row has\
    \ cellId and the cellId must match\na sample name in the expression matrix. Optional\
    \ but\nrequired if you use --inCluster. 'inMeta' in\nscanpy.conf"
  type: string
  inputBinding:
    prefix: --meta
- id: in_outdir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --outDir
- id: in_name
  doc: "internal name of dataset in cell browser. No spaces or\nspecial characters.\
    \ default: name of output directory\n(-o)"
  type: Directory
  inputBinding:
    prefix: --name
- id: in_in_it
  doc: copy sample scanpy.conf to current directory
  type: boolean
  inputBinding:
    prefix: --init
- id: in_samples_on_rows
  doc: "when reading the expression matrix from a text file,\nassume that samples\
    \ are on lines (default behavior is\none-gene-per-line, one-sample-per-column).\
    \ Also in\nscanpy.conf."
  type: boolean
  inputBinding:
    prefix: --samplesOnRows
- id: in_conf_fname
  doc: "config file from which settings are read, default is\nscanpy.conf"
  type: File
  inputBinding:
    prefix: --confFname
- id: in_in_cluster
  doc: "Do not run louvain-clustering, but use this meta field\nfrom ad.obs when calculating\
    \ marker genes. The default\nis to use the louvain clustering results. Can be\n\
    specified also in scanpy.conf."
  type: string
  inputBinding:
    prefix: --inCluster
- id: in_skip_matrix
  doc: "do not write the scanpy matrix to the destination\ndirectory as a file exprMatrix.tsv.gz"
  type: boolean
  inputBinding:
    prefix: --skipMatrix
- id: in_copy_matrix
  doc: "Instead of reading the input matrix into scanpy and\nthen writing it back\
    \ out, just copy the input matrix.\nOnly works if the input matrix is gzipped\
    \ and in the\nright format and a tsv or csv file, not mtx or\nh5-based files."
  type: boolean
  inputBinding:
    prefix: --copyMatrix
- id: in_genome
  doc: "when reading 10X HDF5 files, the genome to read.\nDefault is GRCh38. Use h5ls\
    \ <h5file> to show possible\ngenomes"
  type: long
  inputBinding:
    prefix: --genome
- id: in_test
  doc: run doctests
  type: boolean
  inputBinding:
    prefix: --test
- id: in_debug
  doc: "open an iPython shell when an exception occurs. also\noutput debug messages\n"
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_name
  doc: "internal name of dataset in cell browser. No spaces or\nspecial characters.\
    \ default: name of output directory\n(-o)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- cbScanpy
