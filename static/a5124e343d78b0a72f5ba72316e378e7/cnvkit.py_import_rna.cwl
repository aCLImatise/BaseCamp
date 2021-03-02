class: CommandLineTool
id: cnvkit.py_import_rna.cwl
inputs:
- id: in_format
  doc: "Input format name: 'rsem' for RSEM gene-level read\ncounts (*_rsem.genes.results),\
    \ or 'counts' for generic\n2-column gene IDs and their read counts (e.g. TCGA\n\
    level 2 RNA expression)."
  type: long?
  inputBinding:
    prefix: --format
- id: in_gene_resource
  doc: Location of gene info table from Ensembl BioMart.
  type: File?
  inputBinding:
    prefix: --gene-resource
- id: in_correlations
  doc: "Correlation of each gene's copy number with\nexpression. Output of cnv_expression_correlate.py."
  type: File?
  inputBinding:
    prefix: --correlations
- id: in_max_log_two
  doc: "Maximum log2 ratio in output. Observed values above\nthis limit will be replaced\
    \ with this value. [Default:\n3.0]"
  type: double?
  inputBinding:
    prefix: --max-log2
- id: in_normal
  doc: "Normal samples (same format as `gene_counts`) to be\nused as a control to\
    \ when normalizing and re-centering\ngene read depth ratios. All filenames following\
    \ this\noption will be used."
  type: string[]
  inputBinding:
    prefix: --normal
- id: in_output_dir
  doc: "Directory to write a CNVkit .cnr file for each input\nsample. [Default: .]"
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_output
  doc: Output file name (summary table).
  type: File?
  inputBinding:
    prefix: --output
- id: in_no_gc
  doc: Skip GC correction.
  type: boolean?
  inputBinding:
    prefix: --no-gc
- id: in_no_tx_len
  doc: Skip transcript length correction.
  type: boolean?
  inputBinding:
    prefix: --no-txlen
- id: in_files
  doc: "Tabular files with Ensembl gene ID and number of reads\nmapped to each gene,\
    \ from RSEM or another transcript\nquantifier."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name (summary table).
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- import-rna
