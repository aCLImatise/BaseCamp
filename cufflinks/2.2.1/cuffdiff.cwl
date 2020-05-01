#!/usr/bin/env cwl-runner

baseCommand:
- cuffdiff
class: CommandLineTool
cwlVersion: v1.0
id: cuffdiff
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
- doc: 'False discovery rate used in testing                  [ default:   0.05 ]'
  id: fdr
  inputBinding:
    prefix: --FDR
  type: boolean
- doc: '/--mask-file               ignore all alignment within transcripts in this
    file  [ default:   NULL ]'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: '/--contrast-file           Perform the constrasts specified in this file         [
    default:   NULL ]'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: '/--frag-bias-correct       use bias correction - reference fasta required        [
    default:   NULL ]'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: "/--multi-read-correct      use 'rescue method' for multi-reads           \
    \        [ default:  FALSE ]"
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: '/--num-threads             number of threads used during quantification          [
    default:      1 ]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: "Don't generate differential analysis files            [ default:  FALSE ]"
  id: no_diff
  inputBinding:
    prefix: --no-diff
  type: boolean
- doc: "Don't perform isoform switching tests                 [ default:  FALSE ]"
  id: no_js_tests
  inputBinding:
    prefix: --no-js-tests
  type: boolean
- doc: '/--time-series             treat samples as a time-series                        [
    default:  FALSE ]'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: 'Library prep used for input reads                     [ default:  below ]'
  id: library_type
  inputBinding:
    prefix: --library-type
  type: boolean
- doc: 'Method used to estimate dispersion models             [ default:  below ]'
  id: dispersion_method
  inputBinding:
    prefix: --dispersion-method
  type: boolean
- doc: 'Method used to normalize library sizes                [ default:  below ]'
  id: library_norm_method
  inputBinding:
    prefix: --library-norm-method
  type: boolean
- doc: '/--frag-len-mean           average fragment length (unpaired reads only)         [
    default:    200 ]'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '/--frag-len-std-dev        fragment length std deviation (unpaired reads only)   [
    default:     80 ]'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '/--min-alignment-count     minimum number of alignments in a locus for testing   [
    default:   10 ]'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  id: max_mle_iterations
  inputBinding:
    prefix: --max-mle-iterations
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
- doc: print count tables used to fit overdispersion         [    DEPRECATED   ]
  id: emit_count_tables
  inputBinding:
    prefix: --emit-count-tables
  type: boolean
- doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  id: max_bundle_frags
  inputBinding:
    prefix: --max-bundle-frags
  type: boolean
- doc: 'Number of fragment generation samples                 [ default:    100 ]'
  id: num_frag_count_draws
  inputBinding:
    prefix: --num-frag-count-draws
  type: boolean
- doc: 'Number of fragment assignment samples per generation  [ default:     50 ]'
  id: num_frag_assign_draws
  inputBinding:
    prefix: --num-frag-assign-draws
  type: boolean
- doc: 'Maximum number of alignments allowed per fragment     [ default: unlim  ]'
  id: max_frag_multi_hits
  inputBinding:
    prefix: --max-frag-multihits
  type: boolean
- doc: Min replicate p value to admit for testing            [    DEPRECATED   ]
  id: min_outlier_p
  inputBinding:
    prefix: --min-outlier-p
  type: boolean
- doc: 'Replicates needed for relative isoform shift testing  [ default:      3 ]'
  id: min_reps_for_js_test
  inputBinding:
    prefix: --min-reps-for-js-test
  type: boolean
- doc: 'No effective length correction                  [ default:  FALSE ]'
  id: no_effective_length_correction
  inputBinding:
    prefix: --no-effective-length-correction
  type: boolean
- doc: 'No length correction                                  [ default:  FALSE ]'
  id: no_length_correction
  inputBinding:
    prefix: --no-length-correction
  type: boolean
- doc: /--upper-quartile-norm     Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  id: geometric_norm
  inputBinding:
    prefix: --geometric-norm
  type: boolean
- doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  id: raw_mapped_norm
  inputBinding:
    prefix: --raw-mapped-norm
  type: boolean
- doc: Deprecated, use --dispersion-method                   [    DEPRECATED   ]
  id: poisson_dispersion
  inputBinding:
    prefix: --poisson-dispersion
  type: boolean
- doc: 'Skip a random subset of reads this size               [ default:    0.0 ]'
  id: read_skip_fraction
  inputBinding:
    prefix: --read-skip-fraction
  type: boolean
- doc: 'Break all read pairs                                  [ default:  FALSE ]'
  id: no_read_pairs
  inputBinding:
    prefix: --no-read-pairs
  type: boolean
- doc: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
  id: trim_read_length
  inputBinding:
    prefix: --trim-read-length
  type: boolean
- doc: 'Disable SCV correction                                [ default:  FALSE ]'
  id: no_scv_correction
  inputBinding:
    prefix: --no-scv-correction
  type: boolean
