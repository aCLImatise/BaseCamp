class: CommandLineTool
id: mafSplit.cwl
inputs:
- id: in_by_target
  doc: "Make one file per target sequence.  (splits.bed input\nis ignored)."
  type: boolean
  inputBinding:
    prefix: -byTarget
- id: in_outdir_depth
  doc: "For use only with -byTarget.\nCreate N levels of output directory under current\
    \ dir.\nThis helps prevent NFS problems with a large number of\nfile in a directory.\
    \  Using -outDirDepth=3 would\nproduce ./1/2/3/outRoot123.maf."
  type: long
  inputBinding:
    prefix: -outDirDepth
- id: in_use_sequence_name
  doc: "For use only with -byTarget.\nInstead of auto-incrementing an integer to determine\n\
    output filename, expect each target sequence name to\nend with a unique number\
    \ and use that number as the\ninteger to tack onto outRoot."
  type: boolean
  inputBinding:
    prefix: -useSequenceName
- id: in_usefull_sequence_name
  doc: "For use only with -byTarget.\nInstead of auto-incrementing an integer to determine\n\
    output filename, use the target sequence name\nto tack onto outRoot."
  type: boolean
  inputBinding:
    prefix: -useFullSequenceName
- id: in_use_hashed_name
  doc: "For use only with -byTarget.\nInstead of auto-incrementing an integer or requiring\n\
    a unique number in the sequence name, use a hash\nfunction on the sequence name\
    \ to compute an N-bit\nnumber.  This limits the max #filenames to 2^N and\nensures\
    \ that even if different subsets of sequences\nappear in different pairwise mafs,\
    \ the split file\nnames will be consistent (due to hash function).\nThis option\
    \ is useful when a \"scaffold-based\"\nassembly has more than one sequence name\
    \ pattern,\ne.g. both chroms and scaffolds.\n"
  type: long
  inputBinding:
    prefix: -useHashedName
- id: in_splits_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_root
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafSplit
