class: CommandLineTool
id: genblastA.cwl
inputs:
- id: p
  doc: Search program used to produce blast-format sequence alignments, can be either
    "blast" or "wublast", default is "blast", optional
  type: boolean
  inputBinding:
    prefix: -P
- id: q
  doc: List of query sequences to blast, must be in fasta format, required
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: The target database of genomic sequences in fasta format, required
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: 'Whether query sequences are protein sequences (T/F) [default: T], optional'
  type: boolean
  inputBinding:
    prefix: -p
- id: pg
  doc: Specify which blast/wublast program to run. If not specified, the default behaviour
    is to run tblastn (for blast/wublast protein sequence) / blastn (for blast nucleotide
    sequence) or tblastx (for wublast nucleotide sequence).
  type: boolean
  inputBinding:
    prefix: -pg
- id: e
  doc: 'parameter for blast: The e-value, [default: 1e-2], optional'
  type: boolean
  inputBinding:
    prefix: -e
- id: g
  doc: 'parameter for blast: Perform gapped alignment (T/F)  [default: T], optional'
  type: boolean
  inputBinding:
    prefix: -g
- id: f
  doc: 'parameter for blast: Perform filtering (T/F) [default: F], optional'
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: 'parameter for genBlast: weight of penalty for skipping HSPs, between 0 and
    1 [default: 0.5], optional'
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: 'parameter for genBlast: maximum allowed distance between HSPs  within the
    same gene, a non-negative integer [default: 100000], optional'
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: 'parameter for genBlast: number of ranks in the output, a positive integer,
    optional'
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: 'parameter for genBlast: minimum percentage of query gene  coverage in the
    output, between 0 and 1 (e.g. for 50% gene coverage, use "0.5"), optional'
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: 'parameter for genBlast: minimum score of the HSP group in  the output, a real
    number, optional'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: output filename, optional. If not specified, the output will be the same as
    the query filename with ".gblast" extension.
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- genblastA
