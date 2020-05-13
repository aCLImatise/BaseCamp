class: CommandLineTool
id: scran_trend_var.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: min_mean
  doc: A numeric scalar specifying the minimum mean to use for trend fitting.
  type: long
  inputBinding:
    prefix: --min-mean
- id: method
  doc: A string specifying the algorithm to use for smooth trend fitting.
  type: string
  inputBinding:
    prefix: --method
- id: parametric
  doc: A logical scalar indicating whether a parametric fit should be attempted.
  type: string
  inputBinding:
    prefix: --parametric
- id: assay_type
  doc: 'String or integer scalar specifying the assay containing the log-expression
    values. Default: "logcounts"'
  type: string
  inputBinding:
    prefix: --assay-type
- id: use_spikes
  doc: If FALSE only the rows not labelled as spike-in transcripts will be used. If
    TRUE, nly rows labelled as spike-ins with isSpike(x) will be used.
  type: string
  inputBinding:
    prefix: --use-spikes
- id: output_trend_var
  doc: 'Path to the RDS object with named list containing: mean, var, resid.df, block,
    design, trend, df2.'
  type: string
  inputBinding:
    prefix: --output-trend-var
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-trend-var.R
