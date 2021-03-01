class: CommandLineTool
id: Maaslin2.R.cwl
inputs:
- id: in_min_abundance
  doc: 'The minimum abundance for each feature [ Default: 0 ]'
  type: long?
  inputBinding:
    prefix: --min_abundance
- id: in_min_prevalence
  doc: 'The minimum percent of samples for whicha feature is detected at minimum abundance
    [ Default: 0.1 ]'
  type: long?
  inputBinding:
    prefix: --min_prevalence
- id: in_max_significance
  doc: 'The q-value threshold for significance [ Default: 0.25 ]'
  type: long?
  inputBinding:
    prefix: --max_significance
- id: in_normalization
  doc: 'The normalization method to apply  [ Default: TSS ] [ Choices: TSS, CLR, CSS,
    NONE, TMM ]'
  type: string?
  inputBinding:
    prefix: --normalization
- id: in_transform
  doc: 'The transform to apply [ Default: LOG ] [ Choices: LOG, LOGIT, AST, NONE ]'
  type: string?
  inputBinding:
    prefix: --transform
- id: in_analysis_method
  doc: 'The analysis method to apply [ Default: LM ] [ Choices: LM, SLM, CPLM, ZICP,
    NEGBIN, ZINB ]'
  type: string?
  inputBinding:
    prefix: --analysis_method
- id: in_random_effects
  doc: 'The random effects for the model,  comma-delimited for multiple effects  [
    Default: none ]'
  type: string?
  inputBinding:
    prefix: --random_effects
- id: in_fixed_effects
  doc: 'The fixed effects for the model,  comma-delimited for multiple effects  [
    Default: all ]'
  type: string?
  inputBinding:
    prefix: --fixed_effects
- id: in_correction
  doc: 'The correction method for computing  the q-value [ Default: BH ]'
  type: string?
  inputBinding:
    prefix: --correction
- id: in_standardize
  doc: 'Apply z-score so continuous metadata are on  the same scale [ Default: TRUE
    ]'
  type: string?
  inputBinding:
    prefix: --standardize
- id: in_plot_heat_map
  doc: 'Generate a heatmap for the significant  associations [ Default: TRUE ]'
  type: string?
  inputBinding:
    prefix: --plot_heatmap
- id: in_heat_map_first_n
  doc: 'In heatmap, plot top N features with significant  associations [ Default:
    50 ]'
  type: long?
  inputBinding:
    prefix: --heatmap_first_n
- id: in_plot_scatter
  doc: 'Generate scatter plots for the significant  associations [ Default: TRUE ]'
  type: string?
  inputBinding:
    prefix: --plot_scatter
- id: in_cores
  doc: "The number of R processes to  run in parallel [ Default: 1 ]\n"
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Maaslin2.R
