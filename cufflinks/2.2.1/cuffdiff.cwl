class: CommandLineTool
id: cuffdiff.cwl
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
- id: fdr
  doc: 'False discovery rate used in testing                  [ default:   0.05 ]'
  type: boolean
  inputBinding:
    prefix: --FDR
- id: m
  doc: '/--mask-file               ignore all alignment within transcripts in this
    file  [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -M
- id: c
  doc: '/--contrast-file           Perform the constrasts specified in this file         [
    default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -C
- id: b
  doc: '/--frag-bias-correct       use bias correction - reference fasta required        [
    default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -b
- id: u
  doc: "/--multi-read-correct      use 'rescue method' for multi-reads           \
    \        [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: -u
- id: p
  doc: '/--num-threads             number of threads used during quantification          [
    default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p
- id: no_diff
  doc: "Don't generate differential analysis files            [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: --no-diff
- id: no_js_tests
  doc: "Don't perform isoform switching tests                 [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: --no-js-tests
- id: t
  doc: '/--time-series             treat samples as a time-series                        [
    default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -T
- id: library_type
  doc: 'Library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
- id: dispersion_method
  doc: 'Method used to estimate dispersion models             [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --dispersion-method
- id: library_norm_method
  doc: 'Method used to normalize library sizes                [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-norm-method
- id: m
  doc: '/--frag-len-mean           average fragment length (unpaired reads only)         [
    default:    200 ]'
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: '/--frag-len-std-dev        fragment length std deviation (unpaired reads only)   [
    default:     80 ]'
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: '/--min-alignment-count     minimum number of alignments in a locus for testing   [
    default:   10 ]'
  type: boolean
  inputBinding:
    prefix: -c
- id: max_mle_iterations
  doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  type: boolean
  inputBinding:
    prefix: --max-mle-iterations
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
- id: emit_count_tables
  doc: print count tables used to fit overdispersion         [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --emit-count-tables
- id: max_bundle_frags
  doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  type: boolean
  inputBinding:
    prefix: --max-bundle-frags
- id: num_frag_count_draws
  doc: 'Number of fragment generation samples                 [ default:    100 ]'
  type: boolean
  inputBinding:
    prefix: --num-frag-count-draws
- id: num_frag_assign_draws
  doc: 'Number of fragment assignment samples per generation  [ default:     50 ]'
  type: boolean
  inputBinding:
    prefix: --num-frag-assign-draws
- id: max_frag_multi_hits
  doc: 'Maximum number of alignments allowed per fragment     [ default: unlim  ]'
  type: boolean
  inputBinding:
    prefix: --max-frag-multihits
- id: min_outlier_p
  doc: Min replicate p value to admit for testing            [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --min-outlier-p
- id: min_reps_for_js_test
  doc: 'Replicates needed for relative isoform shift testing  [ default:      3 ]'
  type: boolean
  inputBinding:
    prefix: --min-reps-for-js-test
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
- id: n
  doc: /--upper-quartile-norm     Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: -N
- id: geometric_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --geometric-norm
- id: raw_mapped_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --raw-mapped-norm
- id: poisson_dispersion
  doc: Deprecated, use --dispersion-method                   [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --poisson-dispersion
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
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffdiff
