class: CommandLineTool
id: mafSplit.cwl
inputs:
- id: use_hashed_name
  doc: 'For use only with -byTarget. Instead of auto-incrementing an integer or requiring
    a unique number in the sequence name, use a hash function on the sequence name
    to compute an N-bit number.  This limits the max #filenames to 2^N and ensures
    that even if different subsets of sequences appear in different pairwise mafs,
    the split file names will be consistent (due to hash function). This option is
    useful when a "scaffold-based" assembly has more than one sequence name pattern,
    e.g. both chroms and scaffolds.'
  type: string
  inputBinding:
    prefix: -useHashedName
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSplit
