version 1.0

task CnvkitpyImportrna {
  input {
    Int? format
    File? gene_resource
    File? correlations
    Float? max_log_two
    Array[String] normal
    File? output_dir
    File? output_file_name
    Boolean? no_gc
    Boolean? no_tx_len
    String files
  }
  command <<<
    cnvkit_py import_rna \
      ~{files} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(gene_resource) then ("--gene-resource " +  '"' + gene_resource + '"') else ""} \
      ~{if defined(correlations) then ("--correlations " +  '"' + correlations + '"') else ""} \
      ~{if defined(max_log_two) then ("--max-log2 " +  '"' + max_log_two + '"') else ""} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if (no_gc) then "--no-gc" else ""} \
      ~{if (no_tx_len) then "--no-txlen" else ""}
  >>>
  parameter_meta {
    format: "Input format name: 'rsem' for RSEM gene-level read\\ncounts (*_rsem.genes.results), or 'counts' for generic\\n2-column gene IDs and their read counts (e.g. TCGA\\nlevel 2 RNA expression)."
    gene_resource: "Location of gene info table from Ensembl BioMart."
    correlations: "Correlation of each gene's copy number with\\nexpression. Output of cnv_expression_correlate.py."
    max_log_two: "Maximum log2 ratio in output. Observed values above\\nthis limit will be replaced with this value. [Default:\\n3.0]"
    normal: "Normal samples (same format as `gene_counts`) to be\\nused as a control to when normalizing and re-centering\\ngene read depth ratios. All filenames following this\\noption will be used."
    output_dir: "Directory to write a CNVkit .cnr file for each input\\nsample. [Default: .]"
    output_file_name: "Output file name (summary table)."
    no_gc: "Skip GC correction."
    no_tx_len: "Skip transcript length correction."
    files: "Tabular files with Ensembl gene ID and number of reads\\nmapped to each gene, from RSEM or another transcript\\nquantifier."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}