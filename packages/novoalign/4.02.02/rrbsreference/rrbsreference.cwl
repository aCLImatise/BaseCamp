class: CommandLineTool
id: rrbsreference.cwl
inputs:
- id: in_ref_dot_nix
  doc: is an unmasked indexed reference genome from novoindex
  type: string
  inputBinding:
    position: 0
- id: in_maxlength
  doc: is maximum expected read length and sets maximum distance between unmasked
    CCGG sites.
  type: string
  inputBinding:
    position: 1
- id: in_ccgg_dot_tsv
  doc: "is a list of CCGG sites in the reference. This list can be generated with\
    \ the command\nnovoutil tag ref.nix CCGG | sort -k 1,1 -k2,2n >CCGG.tsv\nref.nix\
    \ is a normal (NOT a bisulphite index) novoindex of the reference fasta file."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rrbsreference
