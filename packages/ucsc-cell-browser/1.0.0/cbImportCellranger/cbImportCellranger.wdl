version 1.0

task CbImportCellranger {
  input {
    Boolean? debug
    Directory? in_dir
    Directory? outdir
    String? name
    Boolean? no_mat
  }
  command <<<
    cbImportCellranger \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(in_dir) then ("--inDir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (no_mat) then "--noMat" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    debug: "show debug messages"
    in_dir: "input folder with the cellranger analysis output. This\\nis the directory with the two directories 'analysis'\\nand 'filtered_gene_bc_matrices'"
    outdir: "output directory"
    name: "name of the dataset. No spaces or special characters."
    no_mat: "do not export the matrix again, saves some time if you\\nchanged something small since the last run\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}