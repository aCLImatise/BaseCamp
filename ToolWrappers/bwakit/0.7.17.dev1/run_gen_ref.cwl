class: CommandLineTool
id: run_gen_ref.cwl
inputs:
- id: in_hs_three_eight
  doc: primary assembly of GRCh38 (incl. chromosomes, unplaced and unlocalized contigs)
    and EBV
  type: long
  inputBinding:
    position: 0
- id: in_hs_three_eight_a
  doc: hs38 plus ALT contigs
  type: long
  inputBinding:
    position: 1
- id: in_hs_three_eight_dh
  doc: hs38a plus decoy contigs and HLA genes (recommended for GRCh38 mapping)
  type: long
  inputBinding:
    position: 2
- id: in_hs_three_seven
  doc: primary assembly of GRCh37 (used by 1000g phase 1) plus the EBV genome
  type: long
  inputBinding:
    position: 3
- id: in_hs_three_seven_d_five
  doc: hs37 plus decoy contigs (used by 1000g phase 3)
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-gen-ref
