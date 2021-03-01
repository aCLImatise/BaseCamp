class: CommandLineTool
id: cuffquant.cwl
inputs:
- id: in_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_mask_file
  doc: 'ignore all alignment within transcripts in this file  [ default:   NULL ]'
  type: boolean?
  inputBinding:
    prefix: --mask-file
- id: in_frag_bias_correct
  doc: 'use bias correction - reference fasta required        [ default:   NULL ]'
  type: boolean?
  inputBinding:
    prefix: --frag-bias-correct
- id: in_multi_read_correct
  doc: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
  type: boolean?
  inputBinding:
    prefix: --multi-read-correct
- id: in_num_threads
  doc: 'number of threads used during quantification          [ default:      1 ]'
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_library_type
  doc: 'Library prep used for input reads                     [ default:  below ]'
  type: boolean?
  inputBinding:
    prefix: --library-type
- id: in_frag_len_mean
  doc: 'average fragment length (unpaired reads only)         [ default:    200 ]'
  type: boolean?
  inputBinding:
    prefix: --frag-len-mean
- id: in_frag_len_std_dev
  doc: 'fragment length std deviation (unpaired reads only)   [ default:     80 ]'
  type: boolean?
  inputBinding:
    prefix: --frag-len-std-dev
- id: in_min_alignment_count
  doc: 'minimum number of alignments in a locus for testing   [ default:   10 ]'
  type: boolean?
  inputBinding:
    prefix: --min-alignment-count
- id: in_max_mle_iterations
  doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  type: boolean?
  inputBinding:
    prefix: --max-mle-iterations
- id: in_verbose
  doc: 'log-friendly verbose processing (no progress bar)     [ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: 'log-friendly quiet processing (no progress bar)       [ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seed
  doc: 'value of random number generator seed                 [ default:      0 ]'
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_no_update_check
  doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --no-update-check
- id: in_max_bundle_frags
  doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  type: boolean?
  inputBinding:
    prefix: --max-bundle-frags
- id: in_max_frag_multi_hits
  doc: 'Maximum number of alignments allowed per fragment     [ default: unlim  ]'
  type: boolean?
  inputBinding:
    prefix: --max-frag-multihits
- id: in_no_effective_length_correction
  doc: 'No effective length correction                  [ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --no-effective-length-correction
- id: in_no_length_correction
  doc: 'No length correction                                  [ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --no-length-correction
- id: in_read_skip_fraction
  doc: 'Skip a random subset of reads this size               [ default:    0.0 ]'
  type: boolean?
  inputBinding:
    prefix: --read-skip-fraction
- id: in_no_read_pairs
  doc: 'Break all read pairs                                  [ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --no-read-pairs
- id: in_trim_read_length
  doc: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
  type: boolean?
  inputBinding:
    prefix: --trim-read-length
- id: in_no_scv_correction
  doc: 'Disable SCV correction                                [ default:  FALSE ]'
  type: boolean?
  inputBinding:
    prefix: --no-scv-correction
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- cuffquant
