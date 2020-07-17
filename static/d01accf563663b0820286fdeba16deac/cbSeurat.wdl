version 1.0

task CbSeurat {
  input {
    Boolean? in_it
    String? expr_matrix
    String? outdir
    String? conf_fname
    String? thread_count
    String? name
    Boolean? debug
  }
  command <<<
    cbSeurat \
      ~{true="--init" false="" in_it} \
      ~{if defined(expr_matrix) then ("--exprMatrix " +  '"' + expr_matrix + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(conf_fname) then ("--confFname " +  '"' + conf_fname + '"') else ""} \
      ~{if defined(thread_count) then ("--threadCount " +  '"' + thread_count + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    in_it: "copy sample seurat.conf to current directory"
    expr_matrix: "gene-cell expression matrix file, possible formats: .mtx, .txt.gz, .csv.gz, .rds. For .mtx, specify the directory where the matrix.mtx file is stored, e.g. filtered_gene_bc_matrices/hg19/"
    outdir: "output directory"
    conf_fname: "config file from which settings are read, default is seurat.conf"
    thread_count: "Number of threads to use via the future library. Default is not use multithreading, so there is no requirement for future library"
    name: "internal name of dataset in cell browser. No spaces or special characters."
    debug: "show debug output"
  }
}