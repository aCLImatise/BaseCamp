class: CommandLineTool
id: cuffnorm.cwl
inputs:
- id: o
  doc: '/--output-dir              write all output files to this directory              [
    default:     ./ ]'
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: /--labels                  comma-separated list of condition labels
  type: boolean
  inputBinding:
    prefix: -L
- id: norm_standards_file
  doc: 'Housekeeping/spike genes to normalize libraries       [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: --norm-standards-file
- id: p
  doc: '/--num-threads             number of threads used during quantification          [
    default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p
- id: library_type
  doc: 'Library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
- id: library_norm_method
  doc: 'Method used to normalize library sizes                [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-norm-method
- id: output_format
  doc: 'Format for output tables                              [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --output-format
- id: compatible_hits_norm
  doc: 'count hits compatible with reference RNAs only        [ default:   TRUE ]'
  type: boolean
  inputBinding:
    prefix: --compatible-hits-norm
- id: total_hits_norm
  doc: 'count all hits for normalization                      [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --total-hits-norm
- id: v
  doc: '/--verbose                 log-friendly verbose processing (no progress bar)     [
    default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: '/--quiet                   log-friendly quiet processing (no progress bar)       [
    default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -q
- id: seed
  doc: 'value of random number generator seed                 [ default:      0 ]'
  type: boolean
  inputBinding:
    prefix: --seed
- id: no_update_check
  doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-update-check
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffnorm
