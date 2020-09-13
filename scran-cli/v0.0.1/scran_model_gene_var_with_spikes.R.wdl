version 1.0

task ScranmodelgenevarwithspikesR {
  input {
    File? input_sce_object
    String? block
    Int? size_factors
    Int? spikes
    Int? spike_size_factors
    String? design
    Int? subset_row
    Int? subset_fit
    Int? assay_type
    Int? min_mean
    String? parametric
    Int? equi_weight
    String? method
    File? output_geneva_r_spikes_table
  }
  command <<<
    scran_model_gene_var_with_spikes_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(block) then ("--block " +  '"' + block + '"') else ""} \
      ~{if defined(size_factors) then ("--size-factors " +  '"' + size_factors + '"') else ""} \
      ~{if defined(spikes) then ("--spikes " +  '"' + spikes + '"') else ""} \
      ~{if defined(spike_size_factors) then ("--spike-size-factors " +  '"' + spike_size_factors + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(subset_row) then ("--subset_row " +  '"' + subset_row + '"') else ""} \
      ~{if defined(subset_fit) then ("--subset-fit " +  '"' + subset_fit + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(min_mean) then ("--min-mean " +  '"' + min_mean + '"') else ""} \
      ~{if defined(parametric) then ("--parametric " +  '"' + parametric + '"') else ""} \
      ~{if defined(equi_weight) then ("--equiweight " +  '"' + equi_weight + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(output_geneva_r_spikes_table) then ("--output-geneVarSpikes-table " +  '"' + output_geneva_r_spikes_table + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format"
    block: "A factor specifying the blocking levels for each cell in sce, for instance a donor covariate. If specified, variance modelling is performed separately within each block and statistics are combined across blocks."
    size_factors: "A numeric vector of cell-specific size factors. Alternatively NULL, in which case the size factors are extracted or computed from x."
    spikes: "String or integer scalar specifying the alternative experiment containing the spike-in transcripts."
    spike_size_factors: "A numeric vector of cell-specific size factors. Alternatively NULL, in which case the size factors are extracted or computed from x."
    design: "A numeric matrix containing blocking terms for uninteresting factors of variation."
    subset_row: "Logical, integer or character vector specifying the rows for which to model the variance. Defaults to all genes in x."
    subset_fit: "Logical, integer or character vector specifying the rows to be used for trend fitting. Defaults to subset.row."
    assay_type: "String or integer scalar specifying the assay containing the log-expression values."
    min_mean: "A numeric scalar specifying the minimum mean to use for trend fitting."
    parametric: "A logical scalar indicating whether a parametric fit should be attempted. f parametric=TRUE, a non-linear curve of the form: y = ax/(x^n + b) s fitted to the variances against the means."
    equi_weight: "A logical scalar indicating whether statistics from each block should be given equal weight. Otherwise, each block is weighted according to its number of cells. Only used if block is specified."
    method: "String specifying how p-values should be combined when block is specified, see ?combinePValues."
    output_geneva_r_spikes_table: "Path to the table where each row corresponds to a gene in sce, and contains: mean, total var, bio var, tech var, p.value and FDR"
  }
  output {
    File out_stdout = stdout()
  }
}