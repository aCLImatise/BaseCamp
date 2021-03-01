class: CommandLineTool
id: poa.cwl
inputs:
- id: in_read_fast_a
  doc: Read in FASTA sequence file.
  type: File?
  inputBinding:
    prefix: -read_fasta
- id: in_read_msa
  doc: Read in MSA alignment file.
  type: File?
  inputBinding:
    prefix: -read_msa
- id: in_read_msa_two
  doc: Read in second MSA file.
  type: File?
  inputBinding:
    prefix: -read_msa2
- id: in_subset
  doc: Filter MSA to include list of seqs in file.
  type: File?
  inputBinding:
    prefix: -subset
- id: in_subset_two
  doc: Filter second MSA to include list of seqs in file.
  type: File?
  inputBinding:
    prefix: -subset2
- id: in_remove
  doc: Filter MSA to exclude list of seqs in file.
  type: File?
  inputBinding:
    prefix: -remove
- id: in_remove_two
  doc: Filter second MSA to exclude list of seqs in file.
  type: File?
  inputBinding:
    prefix: -remove2
- id: in_read_msa_list
  doc: Read an MSA from each filename listed in file.
  type: File?
  inputBinding:
    prefix: -read_msa_list
- id: in_to_lower
  doc: "Force FASTA/MSA sequences to lowercase\n(nucleotides in our matrix files)"
  type: boolean?
  inputBinding:
    prefix: -tolower
- id: in_to_upper
  doc: "Force FASTA/MSA sequences to UPPERCASE\n(amino acids in our matrix files)"
  type: boolean?
  inputBinding:
    prefix: -toupper
- id: in_do_global
  doc: Do global alignment.
  type: boolean?
  inputBinding:
    prefix: -do_global
- id: in_do_progressive
  doc: "Perform progressive alignment using a guide tree\nbuilt by neighbor joining\
    \ from a set of\nsequence-sequence similarity scores."
  type: boolean?
  inputBinding:
    prefix: -do_progressive
- id: in_read_pair_scores
  doc: "Read tab-delimited file of similarity scores.\n(If not provided, scores are\
    \ constructed\nusing pairwise sequence alignment.)"
  type: File?
  inputBinding:
    prefix: -read_pairscores
- id: in_fuse_all
  doc: Fuse identical letters on align rings.
  type: boolean?
  inputBinding:
    prefix: -fuse_all
- id: in_hb
  doc: Perform heaviest bundling to generate consensi.
  type: boolean?
  inputBinding:
    prefix: -hb
- id: in_hbm_in
  doc: "Include in heaviest bundle sequences with\npercent ID (as a fraction) >= value."
  type: string?
  inputBinding:
    prefix: -hbmin
- id: in_pir
  doc: Write out MSA in PIR format.
  type: File?
  inputBinding:
    prefix: -pir
- id: in_clustal
  doc: Write out MSA in CLUSTAL format.
  type: File?
  inputBinding:
    prefix: -clustal
- id: in_po
  doc: Write out MSA in PO format.
  type: File?
  inputBinding:
    prefix: -po
- id: in_preserve_seq_order
  doc: Write out MSA with sequences in their input order.
  type: boolean?
  inputBinding:
    prefix: -preserve_seqorder
- id: in_print_matrix
  doc: Print score matrix to stdout.
  type: string?
  inputBinding:
    prefix: -printmatrix
- id: in_best
  doc: Restrict MSA output to heaviest bundles (PIR only).
  type: boolean?
  inputBinding:
    prefix: -best
- id: in_run_eg_penalties
  doc: Run in verbose mode (e.g. output gap penalties).
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_matrix_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- poa
