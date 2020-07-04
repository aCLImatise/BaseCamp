version 1.0

task CbImportCellranger {
  input {
    Boolean? debug
    String? in_dir
    String? outdir
    String? name
    Boolean? no_mat
  }
  command <<<
    cbImportCellranger \
      ~{true="--debug" false="" debug} \
      ~{if defined(in_dir) then ("--inDir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--noMat" false="" no_mat}
  >>>
  parameter_meta {
    debug: "show debug messages"
    in_dir: "input folder with the cellranger analysis output. This is the directory with the two directories 'analysis' and 'filtered_gene_bc_matrices'"
    outdir: "output directory"
    name: "name of the dataset. No spaces or special characters."
    no_mat: "do not export the matrix again, saves some time if you changed something small since the last run"
  }
}