#!/usr/bin/env cwl-runner

baseCommand:
- idn
class: CommandLineTool
cwlVersion: v1.0
id: idn
inputs:
- doc: Prepare string according to nameprep profile
  id: stringprep
  inputBinding:
    prefix: --stringprep
  type: boolean
- doc: Decode Punycode
  id: punycode_decode
  inputBinding:
    prefix: --punycode-decode
  type: boolean
- doc: Encode Punycode
  id: punycode_encode
  inputBinding:
    prefix: --punycode-encode
  type: boolean
- doc: Convert to ACE according to IDNA (default mode)
  id: i_dna_to_ascii
  inputBinding:
    prefix: --idna-to-ascii
  type: boolean
- doc: Convert from ACE according to IDNA
  id: i_dna_to_unicode
  inputBinding:
    prefix: --idna-to-unicode
  type: boolean
- doc: Toggle IDNA AllowUnassigned flag (default off)
  id: allow_unassigned
  inputBinding:
    prefix: --allow-unassigned
  type: boolean
- doc: Toggle IDNA UseSTD3ASCIIRules flag (default off)
  id: usestd3ascii_rules
  inputBinding:
    prefix: --usestd3asciirules
  type: boolean
- doc: Don't check string for TLD specific rules Only for --idna-to-ascii and --idna-to-unicode
  id: no_tld
  inputBinding:
    prefix: --no-tld
  type: boolean
- doc: Normalise string according to Unicode v3.2 NFKC
  id: nfk_c
  inputBinding:
    prefix: --nfkc
  type: boolean
- doc: "Use specified stringprep profile instead Valid stringprep profiles: `Nameprep',\
    \ `iSCSI', `Nodeprep', `Resourceprep',  `trace', `SASLprep'"
  id: profile
  inputBinding:
    prefix: --profile
  type: string
- doc: Print debugging information
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Silent operation
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
