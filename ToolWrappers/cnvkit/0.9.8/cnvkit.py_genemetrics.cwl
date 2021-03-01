class: CommandLineTool
id: cnvkit.py_genemetrics.cwl
inputs:
- id: in_segment
  doc: "Segmentation calls (.cns), the output of the 'segment'\ncommand)."
  type: string?
  inputBinding:
    prefix: --segment
- id: in_threshold
  doc: "Copy number change threshold to report a gene\ngain/loss. [Default: 0.2]"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_min_probes
  doc: "Minimum number of covered probes to report a\ngain/loss. [Default: 3]"
  type: long?
  inputBinding:
    prefix: --min-probes
- id: in_drop_low_coverage
  doc: "Drop very-low-coverage bins before segmentation to\navoid false-positive deletions\
    \ in poor-quality tumor\nsamples."
  type: boolean?
  inputBinding:
    prefix: --drop-low-coverage
- id: in_haploid_x_reference
  doc: "Assume inputs were normalized to a male reference\n(i.e. female samples will\
    \ have +1 log-coverage of\nchrX; otherwise male samples would have -1 chrX)."
  type: boolean?
  inputBinding:
    prefix: --haploid-x-reference
- id: in_sample_sex
  doc: "Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed\
    \ from X and Y coverage)."
  type: string?
  inputBinding:
    prefix: --sample-sex
- id: in_output
  doc: Output table file name.
  type: File?
  inputBinding:
    prefix: --output
- id: in_mean
  doc: Mean log2-ratio (unweighted).
  type: boolean?
  inputBinding:
    prefix: --mean
- id: in_median
  doc: Median.
  type: boolean?
  inputBinding:
    prefix: --median
- id: in_mode
  doc: Mode (i.e. peak density of log2 ratios).
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_t_test
  doc: One-sample t-test of bin log2 ratios versus 0.0.
  type: boolean?
  inputBinding:
    prefix: --ttest
- id: in_stdev
  doc: Standard deviation.
  type: boolean?
  inputBinding:
    prefix: --stdev
- id: in_sem
  doc: Standard error of the mean.
  type: boolean?
  inputBinding:
    prefix: --sem
- id: in_mad
  doc: Median absolute deviation (standardized).
  type: boolean?
  inputBinding:
    prefix: --mad
- id: in_mse
  doc: Mean squared error.
  type: boolean?
  inputBinding:
    prefix: --mse
- id: in_iqr
  doc: Inter-quartile range.
  type: boolean?
  inputBinding:
    prefix: --iqr
- id: in_bivar
  doc: Tukey's biweight midvariance.
  type: boolean?
  inputBinding:
    prefix: --bivar
- id: in_ci
  doc: Confidence interval (by bootstrap).
  type: boolean?
  inputBinding:
    prefix: --ci
- id: in_pi
  doc: Prediction interval.
  type: boolean?
  inputBinding:
    prefix: --pi
- id: in_alpha
  doc: "Level to estimate confidence and prediction intervals;\nuse with --ci and\
    \ --pi. [Default: 0.05]"
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_bootstrap
  doc: "Number of bootstrap iterations to estimate confidence\ninterval; use with\
    \ --ci. [Default: 100]\n"
  type: long?
  inputBinding:
    prefix: --bootstrap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output table file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- genemetrics
