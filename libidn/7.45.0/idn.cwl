class: CommandLineTool
id: idn.cwl
inputs:
- id: stringprep
  doc: Prepare string according to nameprep profile
  type: boolean
  inputBinding:
    prefix: --stringprep
- id: punycode_decode
  doc: Decode Punycode
  type: boolean
  inputBinding:
    prefix: --punycode-decode
- id: punycode_encode
  doc: Encode Punycode
  type: boolean
  inputBinding:
    prefix: --punycode-encode
- id: i_dna_to_ascii
  doc: Convert to ACE according to IDNA (default mode)
  type: boolean
  inputBinding:
    prefix: --idna-to-ascii
- id: i_dna_to_unicode
  doc: Convert from ACE according to IDNA
  type: boolean
  inputBinding:
    prefix: --idna-to-unicode
- id: allow_unassigned
  doc: Toggle IDNA AllowUnassigned flag (default off)
  type: boolean
  inputBinding:
    prefix: --allow-unassigned
- id: usestd3ascii_rules
  doc: Toggle IDNA UseSTD3ASCIIRules flag (default off)
  type: boolean
  inputBinding:
    prefix: --usestd3asciirules
- id: no_tld
  doc: Don't check string for TLD specific rules Only for --idna-to-ascii and --idna-to-unicode
  type: boolean
  inputBinding:
    prefix: --no-tld
- id: nfk_c
  doc: Normalise string according to Unicode v3.2 NFKC
  type: boolean
  inputBinding:
    prefix: --nfkc
- id: profile
  doc: "Use specified stringprep profile instead Valid stringprep profiles: `Nameprep',\
    \ `iSCSI', `Nodeprep', `Resourceprep',  `trace', `SASLprep'"
  type: string
  inputBinding:
    prefix: --profile
- id: debug
  doc: Print debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: Silent operation
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- idn
