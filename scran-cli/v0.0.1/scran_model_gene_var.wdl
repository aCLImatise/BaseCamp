version 1.0

task ScranModelGeneVar.R {
  input {
    String? input_sce_object
    String? block
    String? design
    String? subset_row
    String? subset_fit
    String? assay_type
    Int? min_mean
    String? parametric
    String? equi_weight
    String? method
    String? output_geneva_r_table
  }
  command <<<
    scran-model-gene-var.R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(block) then ("--block " +  '"' + block + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(subset_row) then ("--subset-row " +  '"' + subset_row + '"') else ""} \
      ~{if defined(subset_fit) then ("--subset-fit " +  '"' + subset_fit + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(min_mean) then ("--min-mean " +  '"' + min_mean + '"') else ""} \
      ~{if defined(parametric) then ("--parametric " +  '"' + parametric + '"') else ""} \
      ~{if defined(equi_weight) then ("--equiweight " +  '"' + equi_weight + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(output_geneva_r_table) then ("--output-geneVar-table " +  '"' + output_geneva_r_table + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    block: "A factor specifying the blocking levels for each cell in sce, for instance a donor covariate. If specified, variance modelling is performed separately within each block and statistics are combined across blocks."
    design: "A numeric matrix containing blocking terms for uninteresting factors of variation."
    subset_row: "Logical, integer or character vector specifying the rows for which to model the variance. Defaults to all genes in x."
    subset_fit: "Logical, integer or character vector specifying the rows to be used for trend fitting. Defaults to subset.row."
    assay_type: "String or integer scalar specifying the assay containing the log-expression values."
    min_mean: "A numeric scalar specifying the minimum mean to use for trend fitting."
    parametric: "A logical scalar indicating whether a parametric fit should be attempted. f parametric=TRUE, a non-linear curve of the form: y = ax/(x^n + b) s fitted to the variances against the means."
    equi_weight: "A logical scalar indicating whether statistics from each block should be given equal weight. Otherwise, each block is weighted according to its number of cells. Only used if block is specified."
    method: "String specifying how p-values should be combined when block is specified, see ?combinePValues."
    output_geneva_r_table: "Path to the table where each row corresponds to a gene in sce, and contains: mean, total var, bio var, tech var, p.value and FDR."
  }
}