#!/usr/bin/env cwl-runner

baseCommand:
- cuffquant
class: CommandLineTool
cwlVersion: v1.0
id: cuffquant
inputs:
- doc: '/--output-dir              write all output files to this directory              [
    default:     ./ ]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '/--mask-file               ignore all alignment within transcripts in this
    file  [ default:   NULL ]'
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
- doc: 'Library prep used for input reads                     [ default:  below ]'
  id: library_type
  inputBinding:
    prefix: --library-type
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
- doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  id: max_bundle_frags
  inputBinding:
    prefix: --max-bundle-frags
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
