class: CommandLineTool
id: ../../../hisat2_inspect_l.cwl
inputs:
- id: a_slash_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long
  inputBinding:
    prefix: -a/--across
- id: s_slash_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s/--summary
- id: n_slash_names
  doc: Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n/--names
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
- id: e_slash_ht_two_ref
  doc: Reconstruct reference from .ht2l (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e/--ht2-ref
- id: v_slash_verbose
  doc: Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: his_at_two_inspect
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2-inspect-l
