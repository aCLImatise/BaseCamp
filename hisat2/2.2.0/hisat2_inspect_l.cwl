class: CommandLineTool
id: hisat2_inspect_l.cwl
inputs:
- id: a
  doc: '/--across <int>  Number of characters across in FASTA output (default: 60)'
  type: boolean
  inputBinding:
    prefix: -a
- id: s
  doc: /--summary       Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s
- id: n
  doc: /--names         Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n
- id: snp
  doc: Print SNPs
  type: boolean
  inputBinding:
    prefix: --snp
- id: ss
  doc: Print splice sites
  type: boolean
  inputBinding:
    prefix: --ss
- id: ss_all
  doc: Print splice sites including those not in the global index
  type: boolean
  inputBinding:
    prefix: --ss-all
- id: exon
  doc: Print exons
  type: boolean
  inputBinding:
    prefix: --exon
- id: e
  doc: /--ht2-ref       Reconstruct reference from .ht2l (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e
- id: v
  doc: /--verbose       Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2-inspect-l
