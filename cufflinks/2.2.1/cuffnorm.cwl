#!/usr/bin/env cwl-runner

baseCommand:
- cuffnorm
class: CommandLineTool
cwlVersion: v1.0
id: cuffnorm
inputs:
- doc: '/--output-dir              write all output files to this directory              [
    default:     ./ ]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: /--labels                  comma-separated list of condition labels
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: 'Housekeeping/spike genes to normalize libraries       [ default:   NULL ]'
  id: norm_standards_file
  inputBinding:
    prefix: --norm-standards-file
  type: boolean
- doc: '/--num-threads             number of threads used during quantification          [
    default:      1 ]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'Library prep used for input reads                     [ default:  below ]'
  id: library_type
  inputBinding:
    prefix: --library-type
  type: boolean
- doc: 'Method used to normalize library sizes                [ default:  below ]'
  id: library_norm_method
  inputBinding:
    prefix: --library-norm-method
  type: boolean
- doc: 'Format for output tables                              [ default:  below ]'
  id: output_format
  inputBinding:
    prefix: --output-format
  type: boolean
- doc: 'count hits compatible with reference RNAs only        [ default:   TRUE ]'
  id: compatible_hits_norm
  inputBinding:
    prefix: --compatible-hits-norm
  type: boolean
- doc: 'count all hits for normalization                      [ default:  FALSE ]'
  id: total_hits_norm
  inputBinding:
    prefix: --total-hits-norm
  type: boolean
- doc: '/--verbose                 log-friendly verbose processing (no progress bar)     [
    default:  FALSE ]'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '/--quiet                   log-friendly quiet processing (no progress bar)       [
    default:  FALSE ]'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: 'value of random number generator seed                 [ default:      0 ]'
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  id: no_update_check
  inputBinding:
    prefix: --no-update-check
  type: boolean
