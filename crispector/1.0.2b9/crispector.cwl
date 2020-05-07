class: CommandLineTool
id: crispector.cwl
inputs:
- id: min_editing_activity
  doc: 'RANGE Minimum editing activity (%). Sites with editing activity lower than
    the minimum, will be discarded from the translocation detection.  [default: 0.1]'
  type: double
  inputBinding:
    prefix: --min_editing_activity
- id: translocation_p_value
  doc: 'RANGE Translocations statistical significance level. This threshold is applied
    on the corrected p_value,FDR (false discovery rate).  [default: 0.05]'
  type: double
  inputBinding:
    prefix: --translocation_p_value
- id: disable_translocations
  doc: 'Disable translocations detection  [default: False]'
  type: boolean
  inputBinding:
    prefix: --disable_translocations
- id: override_noise_estimation
  doc: "Override noise estimation with default q parameter from crispector_config\
    \ file. It's advisable to set this flag for experiment with a low number of off-target\
    \ sites (<5). q is defined as the probability of an indel to occur through an\
    \ edit event. Check CRISPECTOR paper for more details. [default: False]"
  type: boolean
  inputBinding:
    prefix: --override_noise_estimation
- id: confidence_interval
  doc: 'RANGE Confidence interval for the evaluated editing activity  [default: 0.95]'
  type: double
  inputBinding:
    prefix: --confidence_interval
- id: enable_substitutions
  doc: 'Enable substitutions events for the quantification of edit events  [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --enable_substitutions
- id: suppress_site_output
  doc: 'Do not create plots for sites (save memory and runtime)  [default: False]'
  type: boolean
  inputBinding:
    prefix: --suppress_site_output
- id: keep_intermediate_files
  doc: 'Keep intermediate files for debug purposes [default: False; required]'
  type: boolean
  inputBinding:
    prefix: --keep_intermediate_files
- id: verbose
  doc: 'Higher verbosity  [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- crispector
