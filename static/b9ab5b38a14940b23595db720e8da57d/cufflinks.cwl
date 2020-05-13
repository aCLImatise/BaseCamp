class: CommandLineTool
id: cufflinks.cwl
inputs:
- id: hits_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: '/--output-dir              write all output files to this directory              [
    default:     ./ ]'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '/--num-threads             number of threads used during analysis                [
    default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p
- id: seed
  doc: 'value of random number generator seed                 [ default:      0 ]'
  type: boolean
  inputBinding:
    prefix: --seed
- id: g
  doc: '/--GTF                     quantitate against reference transcript annotations                      '
  type: boolean
  inputBinding:
    prefix: -G
- id: g
  doc: '/--GTF-guide               use reference transcript annotation to guide assembly                   '
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: '/--mask-file               ignore all alignment within transcripts in this
    file                     '
  type: boolean
  inputBinding:
    prefix: -M
- id: b
  doc: '/--frag-bias-correct       use bias correction - reference fasta required        [
    default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -b
- id: u
  doc: "/--multi-read-correct      use 'rescue method' for multi-reads (more accurate)\
    \   [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: -u
- id: library_type
  doc: 'library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
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
- id: max_mle_iterations
  doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  type: boolean
  inputBinding:
    prefix: --max-mle-iterations
- id: compatible_hits_norm
  doc: 'count hits compatible with reference RNAs only        [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --compatible-hits-norm
- id: total_hits_norm
  doc: 'count all hits for normalization                      [ default:  TRUE  ]'
  type: boolean
  inputBinding:
    prefix: --total-hits-norm
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
- id: raw_mapped_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --raw-mapped-norm
- id: l
  doc: '/--label                   assembled transcripts have this ID prefix             [
    default:   CUFF ]'
  type: boolean
  inputBinding:
    prefix: -L
- id: f
  doc: '/--min-isoform-fraction    suppress transcripts below this abundance level       [
    default:   0.10 ]'
  type: boolean
  inputBinding:
    prefix: -F
- id: j
  doc: '/--pre-mrna-fraction       suppress intra-intronic transcripts below this
    level  [ default:   0.15 ]'
  type: boolean
  inputBinding:
    prefix: -j
- id: i
  doc: '/--max-intron-length       ignore alignments with gaps longer than this          [
    default: 300000 ]'
  type: boolean
  inputBinding:
    prefix: -I
- id: a
  doc: '/--junc-alpha              alpha for junction binomial test filter               [
    default:  0.001 ]'
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: "/--small-anchor-fraction   percent read overhang taken as 'suspiciously small'\
    \   [ default:   0.09 ]"
  type: boolean
  inputBinding:
    prefix: -A
- id: min_frags_per_trans_frag
  doc: 'minimum number of fragments needed for new transfrags [ default:     10 ]'
  type: boolean
  inputBinding:
    prefix: --min-frags-per-transfrag
- id: overhang_tolerance
  doc: 'number of terminal exon bp to tolerate in introns     [ default:      8 ]'
  type: boolean
  inputBinding:
    prefix: --overhang-tolerance
- id: max_bundle_length
  doc: maximum genomic length allowed for a given bundle     [ default:3500000 ]
  type: boolean
  inputBinding:
    prefix: --max-bundle-length
- id: max_bundle_frags
  doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  type: boolean
  inputBinding:
    prefix: --max-bundle-frags
- id: min_intron_length
  doc: 'minimum intron size allowed in genome                 [ default:     50 ]'
  type: boolean
  inputBinding:
    prefix: --min-intron-length
- id: trim_3_avg_cov_thresh
  doc: "minimum avg coverage required to attempt 3' trimming  [ default:     10 ]"
  type: boolean
  inputBinding:
    prefix: --trim-3-avgcov-thresh
- id: trim_3_drop_off_frac
  doc: "fraction of avg coverage below which to trim 3' end   [ default:    0.1 ]"
  type: boolean
  inputBinding:
    prefix: --trim-3-dropoff-frac
- id: max_multi_read_fraction
  doc: 'maximum fraction of allowed multireads per transcript [ default:   0.75 ]'
  type: boolean
  inputBinding:
    prefix: --max-multiread-fraction
- id: overlap_radius
  doc: 'maximum gap size to fill between transfrags (in bp)   [ default:     50 ]'
  type: boolean
  inputBinding:
    prefix: --overlap-radius
- id: intron_overhang_tolerance
  doc: 'overhang allowed inside reference intron when merging [ default:     30 ]'
  type: boolean
  inputBinding:
    prefix: --intron-overhang-tolerance
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
- id: no_update_check
  doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-update-check
outputs: []
cwlVersion: v1.1
baseCommand:
- cufflinks
