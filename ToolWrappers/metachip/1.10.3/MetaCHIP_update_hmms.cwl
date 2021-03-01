class: CommandLineTool
id: MetaCHIP_update_hmms.cwl
inputs:
- id: in_hmm
  doc: MetaCHIP_phylo.hmm file
  type: File?
  inputBinding:
    prefix: -hmm
- id: in_p_db
  doc: Pfam db file, e.g. Pfam-A.hmm
  type: File?
  inputBinding:
    prefix: -p_db
- id: in_t_db
  doc: TIGRFAMs db folder, e.g. TIGRFAMs_14.0_HMM
  type: Directory?
  inputBinding:
    prefix: -t_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetaCHIP
- update_hmms
