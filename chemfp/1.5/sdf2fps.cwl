class: CommandLineTool
id: sdf2fps.cwl
inputs:
- id: filenames
  doc: input SD files (default is stdin)
  type: File
  inputBinding:
    position: 0
- id: id_tag
  doc: get the record id from TAG instead of the first line of the record
  type: string
  inputBinding:
    prefix: --id-tag
- id: fp_tag
  doc: get the fingerprint from tag TAG (required)
  type: string
  inputBinding:
    prefix: --fp-tag
- id: in
  doc: Specify if the input SD file is uncompressed or gzip compressed
  type: string
  inputBinding:
    prefix: --in
- id: num_bits
  doc: use the first INT bits of the input. Use only when the last 1-7 bits of the
    last byte are not part of the fingerprint. Unexpected errors will occur if these
    bits are not all zero.
  type: long
  inputBinding:
    prefix: --num-bits
- id: errors
  doc: how should structure parse errors be handled? (default=strict)
  type: string
  inputBinding:
    prefix: --errors
- id: output
  doc: save the fingerprints to FILENAME (default=stdout)
  type: File
  inputBinding:
    prefix: --output
- id: out
  doc: output structure format (default guesses from output filename, or is 'fps')
  type: string
  inputBinding:
    prefix: --out
- id: software
  doc: use TEXT as the software description
  type: string
  inputBinding:
    prefix: --software
- id: type
  doc: use TEXT as the fingerprint type description
  type: string
  inputBinding:
    prefix: --type
- id: binary
  doc: "Encoded with the characters '0' and '1'. Bit #0 comes first. Example: 00100000\
    \ encodes the value 4"
  type: boolean
  inputBinding:
    prefix: --binary
- id: binary_msb
  doc: "Encoded with the characters '0' and '1'. Bit #0 comes last. Example: 00000100\
    \ encodes the value 4"
  type: boolean
  inputBinding:
    prefix: --binary-msb
- id: hex
  doc: 'Hex encoded. Bit #0 is the first bit (1<<0) of the first byte. Example: 01f2
    encodes the value \x01\xf2 = 498'
  type: boolean
  inputBinding:
    prefix: --hex
- id: hex_lsb
  doc: 'Hex encoded. Bit #0 is the eigth bit (1<<7) of the first byte. Example: 804f
    encodes the value \x01\xf2 = 498'
  type: boolean
  inputBinding:
    prefix: --hex-lsb
- id: hex_msb
  doc: 'Hex encoded. Bit #0 is the first bit (1<<0) of the last byte. Example: f201
    encodes the value \x01\xf2 = 498'
  type: boolean
  inputBinding:
    prefix: --hex-msb
- id: base64
  doc: 'Base-64 encoded. Bit #0 is first bit (1<<0) of first byte. Example: AfI= encodes
    value \x01\xf2 = 498'
  type: boolean
  inputBinding:
    prefix: --base64
- id: cac_tvs
  doc: CACTVS encoding, based on base64 and includes a version and bit length
  type: boolean
  inputBinding:
    prefix: --cactvs
- id: daylight
  doc: Daylight encoding, which is is base64 variant
  type: boolean
  inputBinding:
    prefix: --daylight
- id: decoder
  doc: import and use the DECODER function to decode the fingerprint
  type: string
  inputBinding:
    prefix: --decoder
- id: pubchem
  doc: decode CACTVS substructure keys used in PubChem. Same as --software=CACTVS/unknown
    --type 'CACTVS- E_SCREEN/1.0 extended=2' --fp- tag=PUBCHEM_CACTVS_SUBSKEYS --cactvs
  type: boolean
  inputBinding:
    prefix: --pubchem
outputs: []
cwlVersion: v1.1
baseCommand:
- sdf2fps
