#!/usr/bin/env cwl-runner

baseCommand:
- poa
class: CommandLineTool
cwlVersion: v1.0
id: poa
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: matrix_file
  inputBinding:
    position: 1
  type: string
- doc: Read in FASTA sequence file.
  id: read_fast_a
  inputBinding:
    prefix: -read_fasta
  type: File
- doc: Read in MSA alignment file.
  id: read_msa
  inputBinding:
    prefix: -read_msa
  type: File
- doc: 'Read in second MSA file. '
  id: read_msa2
  inputBinding:
    prefix: -read_msa2
  type: File
- doc: Filter MSA to include list of seqs in file.
  id: subset
  inputBinding:
    prefix: -subset
  type: File
- doc: Filter second MSA to include list of seqs in file.
  id: subset_2
  inputBinding:
    prefix: -subset2
  type: File
- doc: Filter MSA to exclude list of seqs in file.
  id: remove
  inputBinding:
    prefix: -remove
  type: File
- doc: Filter second MSA to exclude list of seqs in file.
  id: remove_2
  inputBinding:
    prefix: -remove2
  type: File
- doc: Read an MSA from each filename listed in file.
  id: read_msa_list
  inputBinding:
    prefix: -read_msa_list
  type: File
- doc: Force FASTA/MSA sequences to lowercase (nucleotides in our matrix files)
  id: to_lower
  inputBinding:
    prefix: -tolower
  type: boolean
- doc: Force FASTA/MSA sequences to UPPERCASE (amino acids in our matrix files)
  id: to_upper
  inputBinding:
    prefix: -toupper
  type: boolean
- doc: Do global alignment.
  id: do_global
  inputBinding:
    prefix: -do_global
  type: boolean
- doc: Perform progressive alignment using a guide tree built by neighbor joining
    from a set of sequence-sequence similarity scores.
  id: do_progressive
  inputBinding:
    prefix: -do_progressive
  type: boolean
- doc: Read tab-delimited file of similarity scores. (If not provided, scores are
    constructed using pairwise sequence alignment.)
  id: read_pair_scores
  inputBinding:
    prefix: -read_pairscores
  type: File
- doc: Fuse identical letters on align rings.
  id: fuse_all
  inputBinding:
    prefix: -fuse_all
  type: boolean
- doc: Perform heaviest bundling to generate consensi.
  id: hb
  inputBinding:
    prefix: -hb
  type: boolean
- doc: Include in heaviest bundle sequences with percent ID (as a fraction) >= value.
  id: hbm_in
  inputBinding:
    prefix: -hbmin
  type: string
