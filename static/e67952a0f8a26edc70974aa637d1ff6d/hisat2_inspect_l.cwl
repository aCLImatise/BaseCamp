class: CommandLineTool
id: hisat2_inspect_l.cwl
inputs:
- id: in_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long?
  inputBinding:
    prefix: --across
- id: in_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_names
  doc: Print reference sequence names only
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_snp
  doc: Print SNPs
  type: boolean?
  inputBinding:
    prefix: --snp
- id: in_ss
  doc: Print splice sites
  type: boolean?
  inputBinding:
    prefix: --ss
- id: in_ss_all
  doc: Print splice sites including those not in the global index
  type: boolean?
  inputBinding:
    prefix: --ss-all
- id: in_exon
  doc: Print exons
  type: boolean?
  inputBinding:
    prefix: --exon
- id: in_ht_two_ref
  doc: Reconstruct reference from .ht2l (slow, preserves colors)
  type: boolean?
  inputBinding:
    prefix: --ht2-ref
- id: in_verbose
  doc: Verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_his_at_two_inspect
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisat2-inspect-l
