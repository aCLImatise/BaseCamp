version 1.0

task SurpyvorVenn {
  input {
    Boolean? verbose
    Boolean? vcfs_containing_variants
    Boolean? names
    String? distance
    Int? minlength
    Boolean? ignore_type
    File? keep_merged
    String? plot_out
    String? var_8
  }
  command <<<
    surpyvor venn \
      ~{var_8} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (vcfs_containing_variants) then "--variants" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if (ignore_type) then "--ignore_type" else ""} \
      ~{if defined(keep_merged) then ("--keepmerged " +  '"' + keep_merged + '"') else ""} \
      ~{if defined(plot_out) then ("--plotout " +  '"' + plot_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print out more information while running."
    vcfs_containing_variants: "[VARIANTS [VARIANTS ...]]\\nvcfs containing structural variants"
    names: "[NAMES [NAMES ...]]\\nNames of datasets in --variants"
    distance: "maximum distance between test and truth call"
    minlength: "Minimum length of SVs to be taken into account"
    ignore_type: "Ignore the type of the structural variant"
    keep_merged: "Save merged vcf file"
    plot_out: "Name of output plot"
    var_8: ""
  }
  output {
    File out_stdout = stdout()
  }
}