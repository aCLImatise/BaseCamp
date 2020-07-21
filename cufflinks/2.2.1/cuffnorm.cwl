class: CommandLineTool
id: ../../../cuffnorm.cwl
inputs:
- id: oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: boolean
  inputBinding:
    prefix: -o/--output-dir
- id: lslash_labels
  doc: comma-separated list of condition labels
  type: boolean
  inputBinding:
    prefix: -L/--labels
- id: norm_standards_file
  doc: 'Housekeeping/spike genes to normalize libraries       [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: --norm-standards-file
- id: p_slash_num_threads
  doc: 'number of threads used during quantification          [ default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p/--num-threads
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
- id: v_slash_verbose
  doc: 'log-friendly verbose processing (no progress bar)     [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: q_slash_quiet
  doc: 'log-friendly quiet processing (no progress bar)       [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -q/--quiet
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
- id: transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample_one_expr_dot_cx_b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample_two_expr_dot_cx_b
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffnorm
