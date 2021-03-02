version 1.0

task ScrantrendvarR {
  input {
    File? input_sce_object
    Int? min_mean
    String? method
    String? parametric
    Int? assay_type
    String? use_spikes
    File? output_trend_var
  }
  command <<<
    scran_trend_var_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(min_mean) then ("--min-mean " +  '"' + min_mean + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(parametric) then ("--parametric " +  '"' + parametric + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(use_spikes) then ("--use-spikes " +  '"' + use_spikes + '"') else ""} \
      ~{if defined(output_trend_var) then ("--output-trend-var " +  '"' + output_trend_var + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    min_mean: "A numeric scalar specifying the minimum mean to use for trend fitting."
    method: "A string specifying the algorithm to use for smooth trend fitting."
    parametric: "A logical scalar indicating whether a parametric fit should be attempted."
    assay_type: "String or integer scalar specifying the assay containing the log-expression values. Default: \\\"logcounts\\\""
    use_spikes: "If FALSE only the rows not labelled as spike-in transcripts will be used. If TRUE, nly rows labelled as spike-ins with isSpike(x) will be used."
    output_trend_var: "Path to the RDS object with named list containing: mean, var, resid.df, block, design, trend, df2."
  }
  output {
    File out_stdout = stdout()
  }
}