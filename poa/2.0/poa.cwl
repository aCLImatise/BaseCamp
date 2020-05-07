class: CommandLineTool
id: poa.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matrix_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read_fast_a
  doc: Read in FASTA sequence file.
  type: File
  inputBinding:
    prefix: -read_fasta
- id: read_msa
  doc: Read in MSA alignment file.
  type: File
  inputBinding:
    prefix: -read_msa
- id: read_msa2
  doc: 'Read in second MSA file. '
  type: File
  inputBinding:
    prefix: -read_msa2
- id: subset
  doc: Filter MSA to include list of seqs in file.
  type: File
  inputBinding:
    prefix: -subset
- id: subset_2
  doc: Filter second MSA to include list of seqs in file.
  type: File
  inputBinding:
    prefix: -subset2
- id: remove
  doc: Filter MSA to exclude list of seqs in file.
  type: File
  inputBinding:
    prefix: -remove
- id: remove_2
  doc: Filter second MSA to exclude list of seqs in file.
  type: File
  inputBinding:
    prefix: -remove2
- id: read_msa_list
  doc: Read an MSA from each filename listed in file.
  type: File
  inputBinding:
    prefix: -read_msa_list
- id: to_lower
  doc: Force FASTA/MSA sequences to lowercase (nucleotides in our matrix files)
  type: boolean
  inputBinding:
    prefix: -tolower
- id: to_upper
  doc: Force FASTA/MSA sequences to UPPERCASE (amino acids in our matrix files)
  type: boolean
  inputBinding:
    prefix: -toupper
- id: do_global
  doc: Do global alignment.
  type: boolean
  inputBinding:
    prefix: -do_global
- id: do_progressive
  doc: Perform progressive alignment using a guide tree built by neighbor joining
    from a set of sequence-sequence similarity scores.
  type: boolean
  inputBinding:
    prefix: -do_progressive
- id: read_pair_scores
  doc: Read tab-delimited file of similarity scores. (If not provided, scores are
    constructed using pairwise sequence alignment.)
  type: File
  inputBinding:
    prefix: -read_pairscores
- id: fuse_all
  doc: Fuse identical letters on align rings.
  type: boolean
  inputBinding:
    prefix: -fuse_all
- id: hb
  doc: Perform heaviest bundling to generate consensi.
  type: boolean
  inputBinding:
    prefix: -hb
- id: hbm_in
  doc: Include in heaviest bundle sequences with percent ID (as a fraction) >= value.
  type: string
  inputBinding:
    prefix: -hbmin
outputs: []
cwlVersion: v1.1
baseCommand:
- poa
