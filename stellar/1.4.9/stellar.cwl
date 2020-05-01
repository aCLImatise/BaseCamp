#!/usr/bin/env cwl-runner

baseCommand:
- stellar
class: CommandLineTool
cwlVersion: v1.0
id: stellar
inputs:
- doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  id: version_check
  inputBinding:
    prefix: --version-check
  type: boolean
- doc: 'Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default: 0.05.'
  id: epsilon
  inputBinding:
    prefix: --epsilon
  type: string
- doc: 'Minimal length of epsilon-matches. In range [0..inf]. Default: 100.'
  id: minlength
  inputBinding:
    prefix: --minLength
  type: long
- doc: Search only in forward strand of database.
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: Search only in reverse complement of database.
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: Alphabet type of input sequences (dna, rna, dna5, rna5, protein, char). One
    of dna, dna5, rna, rna5, protein, and char.
  id: alphabet
  inputBinding:
    prefix: --alphabet
  type: string
- doc: Set verbosity mode.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Length of the q-grams (max 32). In range [1..32].
  id: km_er
  inputBinding:
    prefix: --kmer
  type: long
- doc: 'Maximal period of low complexity repeats to be filtered. Default: 1.'
  id: repeat_period
  inputBinding:
    prefix: --repeatPeriod
  type: long
- doc: 'Minimal length of low complexity repeats to be filtered. Default: 1000.'
  id: repeat_length
  inputBinding:
    prefix: --repeatLength
  type: long
- doc: 'k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  id: abundance_cut
  inputBinding:
    prefix: --abundanceCut
  type: string
- doc: 'Maximal x-drop for extension. Default: 5.'
  id: x_drop
  inputBinding:
    prefix: --xDrop
  type: string
- doc: 'Verification strategy: exact or bestLocal or bandedGlobal One of exact, bestLocal,
    and bandedGlobal. Default: exact.'
  id: verification
  inputBinding:
    prefix: --verification
  type: string
- doc: Maximal number of verified matches before disabling verification for one query
    sequence (default infinity). In range [0..inf].
  id: disable_thresh
  inputBinding:
    prefix: --disableThresh
  type: long
- doc: 'Maximal number of kept matches per query and database. If STELLAR finds more
    matches, only the longest ones are kept. Default: 50.'
  id: num_matches
  inputBinding:
    prefix: --numMatches
  type: long
- doc: 'Number of matches triggering removal of duplicates. Choose a smaller value
    for saving space. Default: 500.'
  id: sort_thresh
  inputBinding:
    prefix: --sortThresh
  type: long
- doc: 'Name of output file. Valid filetypes are: .txt and .gff. Default: stellar.gff.'
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: 'Name of output file for disabled query sequences. Valid filetypes are: .fasta
    and .fa. Default: stellar.disabled.fasta.'
  id: out_disabled
  inputBinding:
    prefix: --outDisabled
  type: string
