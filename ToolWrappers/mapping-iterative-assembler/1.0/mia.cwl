class: CommandLineTool
id: mia.cwl
inputs:
- id: in_s_substitution_matrix
  doc: "-s <substitution matrix file> (if not supplied an default matrix is used)\n\
    -m <root file name for maln output file(s)> (assembly.maln.iter)"
  type: File
  inputBinding:
    prefix: -f
- id: in_database_repeat_keep
  doc: "database has repeat sequences, keep one based on alignment score\n-U fasta\
    \ database has repeat sequences, keep one based on sum of q-scores\n-C<tolerance>\
    \ collapse sequences with same start, end, strand info into a single sequence\n\
    Allow <tolerance> bases difference for start and end coordinates\nImportant: keep\
    \ NO SPACE between parameter and value: e.g. -C3\n-A use adapter presence and\
    \ coordinate information to more aggressively\nremove repeat sequences - suitable\
    \ only for 454 sequences that have not\nalready been adapter trimmed\n-T fasta\
    \ database has adapters, trim these\n-a <adapter sequence or code>\n-k <use kmer\
    \ filter with kmers of this length>\n-I <filename of list of sequence IDs to use,\
    \ ignoring all others>"
  type: long
  inputBinding:
    prefix: -u
- id: in_consensus_calling_default
  doc: "<consensus calling code; default = 1>\n-c means reference/assembly is circular\n\
    -i iterate assembly until convergence (default)\n-n do not iterate assembly until\
    \ convergence\n-F <only output the FINAL assembly, not each iteration>\n-D <distantly\
    \ related reference sequence>\n-h give special discount for homopolymer gaps\n\
    -M <use lower-case soft-masking of kmers>\n-H <do not do dynamic score cutoff,\
    \ instead use this Hard score cutoff>\n-S <slope of length/score cutoff line>\n\
    -N <intercept of length/score cutoff line>"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_s_substitution_matrix
  doc: "-s <substitution matrix file> (if not supplied an default matrix is used)\n\
    -m <root file name for maln output file(s)> (assembly.maln.iter)"
  type: File
  outputBinding:
    glob: $(inputs.in_s_substitution_matrix)
cwlVersion: v1.1
baseCommand:
- mia
