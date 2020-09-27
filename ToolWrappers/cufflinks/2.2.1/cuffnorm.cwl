class: CommandLineTool
id: cuffnorm.cwl
inputs:
- id: in_oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory
  inputBinding:
    prefix: -o/--output-dir
- id: in_lslash_labels
  doc: comma-separated list of condition labels
  type: boolean
  inputBinding:
    prefix: -L/--labels
- id: in_norm_standards_file
  doc: 'Housekeeping/spike genes to normalize libraries       [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: --norm-standards-file
- id: in_p_slash_num_threads
  doc: 'number of threads used during quantification          [ default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p/--num-threads
- id: in_library_type
  doc: 'Library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
- id: in_library_norm_method
  doc: 'Method used to normalize library sizes                [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-norm-method
- id: in_output_format
  doc: 'Format for output tables                              [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --output-format
- id: in_compatible_hits_norm
  doc: 'count hits compatible with reference RNAs only        [ default:   TRUE ]'
  type: boolean
  inputBinding:
    prefix: --compatible-hits-norm
- id: in_total_hits_norm
  doc: 'count all hits for normalization                      [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --total-hits-norm
- id: in_v_slash_verbose
  doc: 'log-friendly verbose processing (no progress bar)     [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: in_q_slash_quiet
  doc: 'log-friendly quiet processing (no progress bar)       [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: in_seed
  doc: 'value of random number generator seed                 [ default:      0 ]'
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_no_update_check
  doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-update-check
- id: in_ff_first_strand
  doc: ff-secondstrand
  type: string
  inputBinding:
    position: 0
- id: in_ff_un_stranded
  doc: fr-firststrand
  type: string
  inputBinding:
    position: 1
- id: in_fr_second_strand
  doc: fr-unstranded (default)
  type: string
  inputBinding:
    position: 2
- id: in_trans_frags
  doc: 'Supported library normalization methods:'
  type: string
  inputBinding:
    position: 3
- id: in_classic_fp_km
  doc: geometric (default)
  type: string
  inputBinding:
    position: 4
- id: in_geometric
  doc: quartile
  type: string
  inputBinding:
    position: 5
- id: in_cuff_diff
  doc: simple-table (default)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_oslash_output_dir)
cwlVersion: v1.1
baseCommand:
- cuffnorm
