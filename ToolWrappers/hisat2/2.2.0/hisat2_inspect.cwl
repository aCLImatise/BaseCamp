class: CommandLineTool
id: hisat2_inspect.cwl
inputs:
- id: in_large_index
  doc: "force inspection of the 'large' index, even if a\n'small' one is present."
  type: boolean?
  inputBinding:
    prefix: --large-index
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
  doc: Reconstruct reference from .ht2 (slow, preserves colors)
  type: boolean?
  inputBinding:
    prefix: --ht2-ref
- id: in_verbose
  doc: Verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisat2-inspect
