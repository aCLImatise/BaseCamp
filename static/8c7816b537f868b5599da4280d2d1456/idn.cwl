class: CommandLineTool
id: idn.cwl
inputs:
- id: in_stringprep
  doc: Prepare string according to nameprep profile
  type: boolean?
  inputBinding:
    prefix: --stringprep
- id: in_punycode_decode
  doc: Decode Punycode
  type: boolean?
  inputBinding:
    prefix: --punycode-decode
- id: in_punycode_encode
  doc: Encode Punycode
  type: boolean?
  inputBinding:
    prefix: --punycode-encode
- id: in_i_dna_to_ascii
  doc: Convert to ACE according to IDNA (default mode)
  type: boolean?
  inputBinding:
    prefix: --idna-to-ascii
- id: in_i_dna_to_unicode
  doc: Convert from ACE according to IDNA
  type: boolean?
  inputBinding:
    prefix: --idna-to-unicode
- id: in_allow_unassigned
  doc: Toggle IDNA AllowUnassigned flag (default off)
  type: boolean?
  inputBinding:
    prefix: --allow-unassigned
- id: in_use_std_three_ascii_rules
  doc: Toggle IDNA UseSTD3ASCIIRules flag (default off)
  type: boolean?
  inputBinding:
    prefix: --usestd3asciirules
- id: in_no_tld
  doc: "Don't check string for TLD specific rules\nOnly for --idna-to-ascii and --idna-to-unicode"
  type: boolean?
  inputBinding:
    prefix: --no-tld
- id: in_nfk_c
  doc: Normalize string according to Unicode v3.2 NFKC
  type: boolean?
  inputBinding:
    prefix: --nfkc
- id: in_profile
  doc: "Use specified stringprep profile instead\nValid stringprep profiles: `Nameprep',\n\
    `iSCSI', `Nodeprep', `Resourceprep',\n`trace', `SASLprep'"
  type: string?
  inputBinding:
    prefix: --profile
- id: in_debug
  doc: Print debugging information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: Silent operation
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- idn
