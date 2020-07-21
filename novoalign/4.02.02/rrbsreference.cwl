class: CommandLineTool
id: ../../../rrbsreference.cwl
inputs:
- id: ref_dot_nix
  doc: is an unmasked indexed reference genome from novoindex
  type: string
  inputBinding:
    position: 0
- id: maxlength
  doc: is maximum expected read length and sets maximum distance between unmasked
    CCGG sites.
  type: long
  inputBinding:
    position: 1
- id: ccgg_dot_tsv
  doc: 'is a list of CCGG sites in the reference. This list can be generated with
    the command novoutil tag ref.nix CCGG | sort -k 1,1 -k2,2n >CCGG.tsv ref.nix is
    a normal (NOT a bisulphite index) novoindex of the reference fasta file. '
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rrbsreference
