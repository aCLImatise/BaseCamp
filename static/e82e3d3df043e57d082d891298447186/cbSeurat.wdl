version 1.0

task CbSeurat {
  input {
    Boolean? in_it
    File? expr_matrix
    Directory? outdir
    File? conf_fname
    Int? thread_count
    String? name
    Boolean? debug
  }
  command <<<
    cbSeurat \
      ~{if (in_it) then "--init" else ""} \
      ~{if defined(expr_matrix) then ("--exprMatrix " +  '"' + expr_matrix + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(conf_fname) then ("--confFname " +  '"' + conf_fname + '"') else ""} \
      ~{if defined(thread_count) then ("--threadCount " +  '"' + thread_count + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    in_it: "copy sample seurat.conf to current directory"
    expr_matrix: "gene-cell expression matrix file, possible formats:\\n.mtx, .txt.gz, .csv.gz, .rds. For .mtx, specify the\\ndirectory where the matrix.mtx file is stored, e.g.\\nfiltered_gene_bc_matrices/hg19/"
    outdir: "output directory"
    conf_fname: "config file from which settings are read, default is\\nseurat.conf"
    thread_count: "Number of threads to use via the future library.\\nDefault is not use multithreading, so there is no\\nrequirement for future library"
    name: "internal name of dataset in cell browser. No spaces or\\nspecial characters."
    debug: "show debug output"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}