class: CommandLineTool
id: chira_quantify.py.cwl
inputs:
- id: in_bed
  doc: 'Input BED file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_merged_bed
  doc: 'Input merged BED file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --merged_bed
- id: in_outdir
  doc: "Output file containing merged alignments (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_crl_share
  doc: "Minimum fraction of reads of a locus that must overlap\nwith all CRL loci\
    \ inorder to merge it into that CRL.\n(default: 0.7)"
  type: boolean?
  inputBinding:
    prefix: --crl_share
- id: in_min_locus_size
  doc: "Minimum number of reads a locus should have in order\nto participate in CRL\
    \ creation.Always set this value\nrelative to your sequencing depth. Setting this\
    \ to\nlower leadsCRLs of random multimappings Also consider\nsetting the --crl_share\
    \ option along with this\n(default: 10)"
  type: boolean?
  inputBinding:
    prefix: --min_locus_size
- id: in_em_threshold
  doc: "The maximum difference of transcripts expression\nbetween two consecutive\
    \ iterations of EM algorithm to\nconverge. (default: 0.1)"
  type: boolean?
  inputBinding:
    prefix: --em_threshold
- id: in_build_crls_too
  doc: 'Create CRLs too (default: False)'
  type: boolean?
  inputBinding:
    prefix: --build_crls_too
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output file containing merged alignments (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- chira_quantify.py
