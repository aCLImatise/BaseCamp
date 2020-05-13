class: CommandLineTool
id: orfm.cwl
inputs:
- id: m
  doc: 'minimum number of nucleotides (not amino acids) to call an ORF on [default:
    96]'
  type: long
  inputBinding:
    prefix: -m
- id: t
  doc: 'output nucleotide sequences of transcripts to this path [default: none]'
  type: File
  inputBinding:
    prefix: -t
- id: l
  doc: 'ignore the sequence of the read beyond this, useful when comparing reads from
    with different read lengths [default: none]'
  type: long
  inputBinding:
    prefix: -l
- id: c
  doc: 'codon table for translation (see  http://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html/index.cgi?chapter=tgencodes
    for details) [default: 1]'
  type: string
  inputBinding:
    prefix: -c
- id: p
  doc: 'print the actual stop codons at sequence ends if encoded [default: do not]'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: 'only print those ORFs in the same frame as a stop codon [default: off]'
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: do not run unless this version of OrfM is at least this version number (e.g.
    0.7.1)
  type: string
  inputBinding:
    prefix: -r
- id: v
  doc: show version information
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- orfm
