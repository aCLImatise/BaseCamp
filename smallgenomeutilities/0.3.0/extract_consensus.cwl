class: CommandLineTool
id: extract_consensus.cwl
inputs:
- id: f
  doc: 'Fasta file containing the reference sequence (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: 'Region of interested in BED format, e.g. HXB2:2253-3869. Loci are interpreted
    using 0-based indexing, and a half-open interval is used, i.e, [start:end) (default:
    None)'
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: 'Minimum read depth for reporting variants per locus (default: 50)'
  type: long
  inputBinding:
    prefix: -c
- id: q
  doc: 'Minimum phred quality score a base has to reach to be counted (default: 15)'
  type: long
  inputBinding:
    prefix: -q
- id: a
  doc: 'Minimum frequency for an ambiguous nucleotide (default: 0.05)'
  type: double
  inputBinding:
    prefix: -a
- id: n
  doc: 'Patient/sample identifier (default: CONSENSUS)'
  type: string
  inputBinding:
    prefix: -N
- id: o
  doc: 'Output directory (default: /tmp/tmp29j9zezo)'
  type: File
  inputBinding:
    prefix: -o
- id: i
  doc: 'Input BAM file (default: None)'
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_consensus
