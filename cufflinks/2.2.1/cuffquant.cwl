class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cuffquant.cwl
inputs:
- id: oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: boolean
  inputBinding:
    prefix: -o/--output-dir
- id: m_slash_mask_file
  doc: 'ignore all alignment within transcripts in this file  [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -M/--mask-file
- id: b_slash_frag_bias_correct
  doc: 'use bias correction - reference fasta required        [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -b/--frag-bias-correct
- id: us_lash_multi_read_correct
  doc: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: -u/--multi-read-correct
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
- id: m_slash_frag_len_mean
  doc: 'average fragment length (unpaired reads only)         [ default:    200 ]'
  type: boolean
  inputBinding:
    prefix: -m/--frag-len-mean
- id: s_slash_frag_len_std_dev
  doc: 'fragment length std deviation (unpaired reads only)   [ default:     80 ]'
  type: boolean
  inputBinding:
    prefix: -s/--frag-len-std-dev
- id: c_slash_min_alignment_count
  doc: 'minimum number of alignments in a locus for testing   [ default:   10 ]'
  type: boolean
  inputBinding:
    prefix: -c/--min-alignment-count
- id: max_mle_iterations
  doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  type: boolean
  inputBinding:
    prefix: --max-mle-iterations
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
- id: max_bundle_frags
  doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  type: boolean
  inputBinding:
    prefix: --max-bundle-frags
- id: max_frag_multi_hits
  doc: 'Maximum number of alignments allowed per fragment     [ default: unlim  ]'
  type: boolean
  inputBinding:
    prefix: --max-frag-multihits
- id: no_effective_length_correction
  doc: 'No effective length correction                  [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-effective-length-correction
- id: no_length_correction
  doc: 'No length correction                                  [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-length-correction
- id: read_skip_fraction
  doc: 'Skip a random subset of reads this size               [ default:    0.0 ]'
  type: boolean
  inputBinding:
    prefix: --read-skip-fraction
- id: no_read_pairs
  doc: 'Break all read pairs                                  [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-read-pairs
- id: trim_read_length
  doc: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
  type: boolean
  inputBinding:
    prefix: --trim-read-length
- id: no_scv_correction
  doc: 'Disable SCV correction                                [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-scv-correction
- id: cuff_diff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample_one_hits_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sample_two_hits_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffquant
