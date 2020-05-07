class: CommandLineTool
id: cuffquant.cwl
inputs:
- id: o
  doc: '/--output-dir              write all output files to this directory              [
    default:     ./ ]'
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: '/--mask-file               ignore all alignment within transcripts in this
    file  [ default:   NULL ]'
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
- id: library_type
  doc: 'Library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
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
outputs: []
cwlVersion: v1.1
baseCommand:
- cuffquant
