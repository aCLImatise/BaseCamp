version 1.0

task CbScanpy {
  input {
    File? expr_matrix
    String? name_cell_table
    Directory? outdir
    Directory? name
    Boolean? in_it
    Boolean? samples_on_rows
    File? conf_fname
    String? in_cluster
    Boolean? skip_matrix
    Boolean? copy_matrix
    Int? genome
    Boolean? test
    Boolean? debug
  }
  command <<<
    cbScanpy \
      ~{if defined(expr_matrix) then ("--exprMatrix " +  '"' + expr_matrix + '"') else ""} \
      ~{if defined(name_cell_table) then ("--meta " +  '"' + name_cell_table + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (in_it) then "--init" else ""} \
      ~{if (samples_on_rows) then "--samplesOnRows" else ""} \
      ~{if defined(conf_fname) then ("--confFname " +  '"' + conf_fname + '"') else ""} \
      ~{if defined(in_cluster) then ("--inCluster " +  '"' + in_cluster + '"') else ""} \
      ~{if (skip_matrix) then "--skipMatrix" else ""} \
      ~{if (copy_matrix) then "--copyMatrix" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    expr_matrix: "gene-cell expression matrix file, possible formats:\\n.csv, .h5, .mtx, .txt, .tab, .loom, .h5ad. Existing\\nmeta data from .loom and .h5ad will be kept and\\nexported."
    name_cell_table: "name of cell meta data table. A table like tsv or csv\\nformat, first row has cellId and the cellId must match\\na sample name in the expression matrix. Optional but\\nrequired if you use --inCluster. 'inMeta' in\\nscanpy.conf"
    outdir: "output directory"
    name: "internal name of dataset in cell browser. No spaces or\\nspecial characters. default: name of output directory\\n(-o)"
    in_it: "copy sample scanpy.conf to current directory"
    samples_on_rows: "when reading the expression matrix from a text file,\\nassume that samples are on lines (default behavior is\\none-gene-per-line, one-sample-per-column). Also in\\nscanpy.conf."
    conf_fname: "config file from which settings are read, default is\\nscanpy.conf"
    in_cluster: "Do not run louvain-clustering, but use this meta field\\nfrom ad.obs when calculating marker genes. The default\\nis to use the louvain clustering results. Can be\\nspecified also in scanpy.conf."
    skip_matrix: "do not write the scanpy matrix to the destination\\ndirectory as a file exprMatrix.tsv.gz"
    copy_matrix: "Instead of reading the input matrix into scanpy and\\nthen writing it back out, just copy the input matrix.\\nOnly works if the input matrix is gzipped and in the\\nright format and a tsv or csv file, not mtx or\\nh5-based files."
    genome: "when reading 10X HDF5 files, the genome to read.\\nDefault is GRCh38. Use h5ls <h5file> to show possible\\ngenomes"
    test: "run doctests"
    debug: "open an iPython shell when an exception occurs. also\\noutput debug messages\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    Directory out_name = "${in_name}"
  }
}