class: CommandLineTool
id: revtrans_jarmo.py.cwl
inputs:
- id: all_internal
  doc: 'By default the very first codon in each sequences is assumed to be the initial
    codon on the transcript. This means certain non-methionine codons actually codes
    for metionine at this  position. For example "TTG" in the standard genetic code
    (see above). Selecting this option treats all codons as internal codons.     '
  type: boolean
  inputBinding:
    prefix: -allinternal
- id: read_through_stop
  doc: 'Allow the translation to continue after a stop codon is reached. The stop
    codon will be marked as "*". Be careful that stop codons have been addressed in
    the same manner in the input peptide alignment.         '
  type: boolean
  inputBinding:
    prefix: -readthroughstop
- id: match
  doc: 'Specify how to match the corresponding DNA and peptide  sequences. Valid methods
    are: trans (default), name and pos. Please note that both DNA and peptide sequence
    should have  unique names, regardless of the matching method.  trans: Match sequences
    by translation. The DNA sequences are translated using the standard genetic code
    (default) or an alternative translation matrix if the -mtx option is used. name:
    Match sequences by name. Please note that for FASTA  files everything after the
    ">" is considered the sequence name.  pos: Match by position. The sequence are
    matched by position in the files (first DNA sequence with first peptide sequence
    etc.).                 '
  type: string
  inputBinding:
    prefix: -match
- id: v
  doc: 'Verbose. Print extra information about files, sequences and the progress in
    general to STDERR. The verbose level can be set to three degrees of detail. -v:   verbose
    level 1 Info about files, number of sequences read etc. Use this as the first
    try if something needs investigation. -vv:  verbose level 2 As level 1 +  Print
    detailed info about all the sequence names. -vvv: verbose level 3 As level 2 +
    Do a sanity check on the degapped length of the sequences. Warn if the sizes do
    not match.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- revtrans_jarmo.py
