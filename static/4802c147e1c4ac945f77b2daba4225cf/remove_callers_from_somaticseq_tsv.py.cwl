class: CommandLineTool
id: remove_callers_from_somaticseq_tsv.py.cwl
inputs:
- id: in_in_file
  doc: 'input file (default: None)'
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: 'input file (default: None)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_subtract
  doc: "[{if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus}\
    \ ...], --subtract-callers {if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus}\
    \ [{if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus}\
    \ ...]\ncolumns to make nan (default: None)\n"
  type: string?
  inputBinding:
    prefix: -subtract
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- remove_callers_from_somaticseq_tsv.py
