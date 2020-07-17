version 1.0

task CbScanpy {
  input {
    String? expr_matrix
    String? name_cell_table
    String? outdir
    String? name
    Boolean? in_it
    Boolean? samples_on_rows
    String? conf_fname
    String? in_cluster
    Boolean? skip_matrix
    Boolean? copy_matrix
    String? genome
    Boolean? test
    Boolean? debug
  }
  command <<<
    cbScanpy \
      ~{if defined(expr_matrix) then ("--exprMatrix " +  '"' + expr_matrix + '"') else ""} \
      ~{if defined(name_cell_table) then ("--meta " +  '"' + name_cell_table + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--init" false="" in_it} \
      ~{true="--samplesOnRows" false="" samples_on_rows} \
      ~{if defined(conf_fname) then ("--confFname " +  '"' + conf_fname + '"') else ""} \
      ~{if defined(in_cluster) then ("--inCluster " +  '"' + in_cluster + '"') else ""} \
      ~{true="--skipMatrix" false="" skip_matrix} \
      ~{true="--copyMatrix" false="" copy_matrix} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    expr_matrix: "gene-cell expression matrix file, possible formats: .csv, .h5, .mtx, .txt, .tab, .loom, .h5ad. Existing meta data from .loom and .h5ad will be kept and exported."
    name_cell_table: "name of cell meta data table. A table like tsv or csv format, first row has cellId and the cellId must match a sample name in the expression matrix. Optional but required if you use --inCluster. 'inMeta' in scanpy.conf"
    outdir: "output directory"
    name: "internal name of dataset in cell browser. No spaces or special characters. default: name of output directory (-o)"
    in_it: "copy sample scanpy.conf to current directory"
    samples_on_rows: "when reading the expression matrix from a text file, assume that samples are on lines (default behavior is one-gene-per-line, one-sample-per-column). Also in scanpy.conf."
    conf_fname: "config file from which settings are read, default is scanpy.conf"
    in_cluster: "Do not run louvain-clustering, but use this meta field from ad.obs when calculating marker genes. The default is to use the louvain clustering results. Can be specified also in scanpy.conf."
    skip_matrix: "do not write the scanpy matrix to the destination directory as a file exprMatrix.tsv.gz"
    copy_matrix: "Instead of reading the input matrix into scanpy and then writing it back out, just copy the input matrix. Only works if the input matrix is gzipped and in the right format and a tsv or csv file, not mtx or h5-based files."
    genome: "when reading 10X HDF5 files, the genome to read. Default is GRCh38. Use h5ls <h5file> to show possible genomes"
    test: "run doctests"
    debug: "open an iPython shell when an exception occurs. also output debug messages"
  }
}