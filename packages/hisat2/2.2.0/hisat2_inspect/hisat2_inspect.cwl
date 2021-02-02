class: CommandLineTool
id: hisat2_inspect.cwl
inputs:
- id: in_large_index
  doc: "force inspection of the 'large' index, even if a\n'small' one is present."
  type: boolean
  inputBinding:
    prefix: --large-index
- id: in_a_slash_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long
  inputBinding:
    prefix: -a/--across
- id: in_s_slash_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s/--summary
- id: in_n_slash_names
  doc: Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n/--names
- id: in_snp
  doc: Print SNPs
  type: boolean
  inputBinding:
    prefix: --snp
- id: in_ss
  doc: Print splice sites
  type: boolean
  inputBinding:
    prefix: --ss
- id: in_ss_all
  doc: Print splice sites including those not in the global index
  type: boolean
  inputBinding:
    prefix: --ss-all
- id: in_exon
  doc: Print exons
  type: boolean
  inputBinding:
    prefix: --exon
- id: in_e_slash_ht_two_ref
  doc: Reconstruct reference from .ht2 (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e/--ht2-ref
- id: in_v_slash_verbose
  doc: Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: in_h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2-inspect
