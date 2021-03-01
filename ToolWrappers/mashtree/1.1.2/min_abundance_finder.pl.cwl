class: CommandLineTool
id: min_abundance_finder.pl.cwl
inputs:
- id: in_gt
  doc: "1   Look for the first peak at this kmer count\nand then the next valley."
  type: boolean?
  inputBinding:
    prefix: --gt
- id: in_km_er
  doc: 21  kmer length
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_num_cpus
  doc: "This script will apply one thread per kmer\nlength. Multiple values of k are\
    \ tested to\nget a consensus value."
  type: long?
  inputBinding:
    prefix: --numcpus
- id: in_misc
  doc: "--kmerCounter ''  The kmer counting program to use.\nDefault: (empty string)\
    \ auto-choose\nOptions: perl, jellyfish\nat /usr/local/bin/min_abundance_finder.pl\
    \ line 46.\n"
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
- min_abundance_finder.pl
