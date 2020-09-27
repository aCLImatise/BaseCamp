class: CommandLineTool
id: chira_quantify.py.cwl
inputs:
- id: in__bed_input
  doc: ', --bed            Input BED file (default: None)'
  type: boolean
  inputBinding:
    prefix: -b
- id: in__mergedbed_input
  doc: ', --merged_bed     Input merged BED file (default: None)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__outdir_output
  doc: ", --outdir         Output file containing merged alignments (default:\nNone)"
  type: File
  inputBinding:
    prefix: -o
- id: in_cs
  doc: ", --crl_share     Minimum fraction of reads of a locus that must overlap\n\
    with all CRL loci inorder to merge it into that CRL.\n(default: 0.7)"
  type: boolean
  inputBinding:
    prefix: -cs
- id: in_ls
  doc: ", --min_locus_size\nMinimum number of reads a locus should have in order\n\
    to participate in CRL creation.Always set this value\nrelative to your sequencing\
    \ depth. Setting this to\nlower leadsCRLs of random multimappings Also consider\n\
    setting the --crl_share option along with this\n(default: 10)"
  type: boolean
  inputBinding:
    prefix: -ls
- id: in__emthreshold_maximum
  doc: ", --em_threshold   The maximum difference of transcripts expression\nbetween\
    \ two consecutive iterations of EM algorithm to\nconverge. (default: 0.1)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_build_crls_too
  doc: 'Create CRLs too (default: False)'
  type: boolean
  inputBinding:
    prefix: --build_crls_too
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_output
  doc: ", --outdir         Output file containing merged alignments (default:\nNone)"
  type: File
  outputBinding:
    glob: $(inputs.in__outdir_output)
cwlVersion: v1.1
baseCommand:
- chira_quantify.py
