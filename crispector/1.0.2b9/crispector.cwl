#!/usr/bin/env cwl-runner

baseCommand:
- crispector
class: CommandLineTool
cwlVersion: v1.0
id: crispector
inputs:
- doc: 'RANGE Minimum editing activity (%). Sites with editing activity lower than
    the minimum, will be discarded from the translocation detection.  [default: 0.1]'
  id: min_editing_activity
  inputBinding:
    prefix: --min_editing_activity
  type: double
- doc: 'RANGE Translocations statistical significance level. This threshold is applied
    on the corrected p_value,FDR (false discovery rate).  [default: 0.05]'
  id: translocation_p_value
  inputBinding:
    prefix: --translocation_p_value
  type: double
- doc: 'Disable translocations detection  [default: False]'
  id: disable_translocations
  inputBinding:
    prefix: --disable_translocations
  type: boolean
- doc: "Override noise estimation with default q parameter from crispector_config\
    \ file. It's advisable to set this flag for experiment with a low number of off-target\
    \ sites (<5). q is defined as the probability of an indel to occur through an\
    \ edit event. Check CRISPECTOR paper for more details. [default: False]"
  id: override_noise_estimation
  inputBinding:
    prefix: --override_noise_estimation
  type: boolean
- doc: 'RANGE Confidence interval for the evaluated editing activity  [default: 0.95]'
  id: confidence_interval
  inputBinding:
    prefix: --confidence_interval
  type: double
- doc: 'Enable substitutions events for the quantification of edit events  [default:
    False]'
  id: enable_substitutions
  inputBinding:
    prefix: --enable_substitutions
  type: boolean
- doc: 'Do not create plots for sites (save memory and runtime)  [default: False]'
  id: suppress_site_output
  inputBinding:
    prefix: --suppress_site_output
  type: boolean
- doc: 'Keep intermediate files for debug purposes [default: False; required]'
  id: keep_intermediate_files
  inputBinding:
    prefix: --keep_intermediate_files
  type: boolean
- doc: 'Higher verbosity  [default: False]'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
