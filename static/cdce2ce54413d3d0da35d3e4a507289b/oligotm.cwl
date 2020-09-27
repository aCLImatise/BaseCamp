class: CommandLineTool
id: oligotm.cwl
inputs:
- id: in_mv
  doc: '- concentration of monovalent cations in mM, by default 50mM'
  type: long
  inputBinding:
    prefix: -mv
- id: in_dv
  doc: '- concentration of divalent cations in mM, by default 1.5mM'
  type: double
  inputBinding:
    prefix: -dv
- id: in_dntpconc_concentration_deoxynycleotide
  doc: dNTP_conc       - concentration of deoxynycleotide triphosphate in mM, by default
    0.6mM
  type: boolean
  inputBinding:
    prefix: -n
- id: in_concentration_dna_strands
  doc: dna_conc        - concentration of DNA strands in nM, by default 50nM
  type: boolean
  inputBinding:
    prefix: -d
- id: in_tp
  doc: "[0|1]     - Specifies the table of thermodynamic parameters and\nthe method\
    \ of melting temperature calculation:\n0  Breslauer et al., 1986 and Rychlik et\
    \ al., 1990\n(used by primer3 up to and including release 1.1.0).\n1  Use nearest\
    \ neighbor parameters from SantaLucia 1998\n*This is the default and recommended\
    \ value*"
  type: boolean
  inputBinding:
    prefix: -tp
- id: in_sc
  doc: "[0..2]    - Specifies salt correction formula for the melting\ntemperature\
    \ calculation\n0  Schildkraut and Lifson 1965, used by primer3 up to\nand including\
    \ release 1.1.0.\n1  SantaLucia 1998\n*This is the default and recommended value*\n\
    2  Owczarzy et al., 2004"
  type: boolean
  inputBinding:
    prefix: -sc
- id: in_oligo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oligotm
