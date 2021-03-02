version 1.0

task RearrangeSnvMatrixpl {
  input {
    Boolean? tree
    Directory? out_dir
    Boolean? phy
    Boolean? matrix
    Boolean? keep_tmp
    Boolean? convert
    Boolean? root
    Boolean? sort
  }
  command <<<
    rearrange_snv_matrix_pl \
      ~{if (tree) then "--tree" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (phy) then "--phy" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (convert) then "--convert" else ""} \
      ~{if (root) then "--root" else ""} \
      ~{if (sort) then "--sort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: "[required]\\nNewick input file describing the phylogenetic tree."
    out_dir: "[required]\\nThe directory for output files."
    phy: "[required]\\nInput snv_align.phy file."
    matrix: "[required]\\nInput matrix.csv file."
    keep_tmp: "[optional]\\nKeep the temp log upon exiting the script."
    convert: "[optional]\\nConvert the branch lengths to an estimate of the total SNV number."
    root: "[optional]\\nThe name of the strain to use as the root for the phylogenetic tree."
    sort: "[optional]\\nEither 'increasing' or 'decreasing', indicating the order in which\\nto sort nodes in the output phylogenetic tree."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}