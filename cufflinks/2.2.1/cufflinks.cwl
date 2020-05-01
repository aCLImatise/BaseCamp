#!/usr/bin/env cwl-runner

baseCommand:
- cufflinks
class: CommandLineTool
cwlVersion: v1.0
id: cufflinks
inputs:
- doc: ''
  id: hits_sam
  inputBinding:
    position: 0
  type: string
- doc: '/--output-dir              write all output files to this directory              [
    default:     ./ ]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '/--num-threads             number of threads used during analysis                [
    default:      1 ]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'value of random number generator seed                 [ default:      0 ]'
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: '/--GTF                     quantitate against reference transcript annotations                      '
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: '/--GTF-guide               use reference transcript annotation to guide assembly                   '
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '/--mask-file               ignore all alignment within transcripts in this
    file                     '
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: '/--frag-bias-correct       use bias correction - reference fasta required        [
    default:   NULL ]'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: "/--multi-read-correct      use 'rescue method' for multi-reads (more accurate)\
    \   [ default:  FALSE ]"
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: 'library prep used for input reads                     [ default:  below ]'
  id: library_type
  inputBinding:
    prefix: --library-type
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
- doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  id: max_mle_iterations
  inputBinding:
    prefix: --max-mle-iterations
  type: boolean
- doc: 'count hits compatible with reference RNAs only        [ default:  FALSE ]'
  id: compatible_hits_norm
  inputBinding:
    prefix: --compatible-hits-norm
  type: boolean
- doc: 'count all hits for normalization                      [ default:  TRUE  ]'
  id: total_hits_norm
  inputBinding:
    prefix: --total-hits-norm
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
  id: raw_mapped_norm
  inputBinding:
    prefix: --raw-mapped-norm
  type: boolean
- doc: '/--label                   assembled transcripts have this ID prefix             [
    default:   CUFF ]'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '/--min-isoform-fraction    suppress transcripts below this abundance level       [
    default:   0.10 ]'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: '/--pre-mrna-fraction       suppress intra-intronic transcripts below this
    level  [ default:   0.15 ]'
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: '/--max-intron-length       ignore alignments with gaps longer than this          [
    default: 300000 ]'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '/--junc-alpha              alpha for junction binomial test filter               [
    default:  0.001 ]'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: "/--small-anchor-fraction   percent read overhang taken as 'suspiciously small'\
    \   [ default:   0.09 ]"
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: 'minimum number of fragments needed for new transfrags [ default:     10 ]'
  id: min_frags_per_trans_frag
  inputBinding:
    prefix: --min-frags-per-transfrag
  type: boolean
- doc: 'number of terminal exon bp to tolerate in introns     [ default:      8 ]'
  id: overhang_tolerance
  inputBinding:
    prefix: --overhang-tolerance
  type: boolean
- doc: maximum genomic length allowed for a given bundle     [ default:3500000 ]
  id: max_bundle_length
  inputBinding:
    prefix: --max-bundle-length
  type: boolean
- doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  id: max_bundle_frags
  inputBinding:
    prefix: --max-bundle-frags
  type: boolean
- doc: 'minimum intron size allowed in genome                 [ default:     50 ]'
  id: min_intron_length
  inputBinding:
    prefix: --min-intron-length
  type: boolean
- doc: "minimum avg coverage required to attempt 3' trimming  [ default:     10 ]"
  id: trim_3_avg_cov_thresh
  inputBinding:
    prefix: --trim-3-avgcov-thresh
  type: boolean
- doc: "fraction of avg coverage below which to trim 3' end   [ default:    0.1 ]"
  id: trim_3_drop_off_frac
  inputBinding:
    prefix: --trim-3-dropoff-frac
  type: boolean
- doc: 'maximum fraction of allowed multireads per transcript [ default:   0.75 ]'
  id: max_multi_read_fraction
  inputBinding:
    prefix: --max-multiread-fraction
  type: boolean
- doc: 'maximum gap size to fill between transfrags (in bp)   [ default:     50 ]'
  id: overlap_radius
  inputBinding:
    prefix: --overlap-radius
  type: boolean
- doc: 'overhang allowed inside reference intron when merging [ default:     30 ]'
  id: intron_overhang_tolerance
  inputBinding:
    prefix: --intron-overhang-tolerance
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
- doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  id: no_update_check
  inputBinding:
    prefix: --no-update-check
  type: boolean
