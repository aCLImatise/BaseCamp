class: CommandLineTool
id: sawriter.cwl
inputs:
- id: or
  doc: sawriter fastaIn  (writes to fastIn.sa). -blt p      Build a lookup table on
    prefixes of length 'p'. This speeds  up lookups considerably (more than the LCP
    table), but misses matches  less than p when searching. -4bit       Read in (one)
    fasta file as a compressed sequence file. -larsson  (default)  Uses the method
    of Larsson and Sadakane to build the array. -mamy      Uses the method of MAnber
    and MYers to build the array (slower than larsson,  and produces the same result.
    This is mainly for double checking the correctness of larsson). -kark       Use
    Karkkainen DS3 method for building the suffix array.  This will probably be more  slow
    than larsson, but takes only an extra N/(sqrt 3) extra space. -mafe       (disabled
    for now!) Use the lightweight construction algorithm from Manzini and Ferragina
    -welter     Use lightweight (sort of light) suffix array construction.  This is
    a bit more slow than normal larsson. -welterweight N use a difference cover of
    size N for building the suffix array.  Valid values are 7,32,64,111, and 2281.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sawriter
