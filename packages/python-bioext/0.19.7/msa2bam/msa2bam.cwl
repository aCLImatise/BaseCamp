class: CommandLineTool
id: ../../../msa2bam.cwl
inputs:
- id: in_reference
  doc: "REFERENCE FASTA file or {HXB2_env, HXB2_gag, HXB2_int,\nHXB2_nef, HXB2_pol,\
    \ HXB2_pr, HXB2_prrt, HXB2_rev,\nHXB2_rt, HXB2_tat, HXB2_vif, HXB2_vpr, HXB2_vpu,\n\
    NL4-3_prrt}\n"
  type: File
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msa2bam
