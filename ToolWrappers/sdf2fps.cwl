class: CommandLineTool
id: sdf2fps.cwl
inputs:
- id: in_id_tag
  doc: "get the record id from TAG instead of the first line\nof the record"
  type: string
  inputBinding:
    prefix: --id-tag
- id: in_fp_tag
  doc: get the fingerprint from tag TAG (required)
  type: string
  inputBinding:
    prefix: --fp-tag
- id: in_in
  doc: Specify if the input SD file is uncompressed or gzip
  type: File
  inputBinding:
    prefix: --in
- id: in_errors
  doc: "how should structure parse errors be handled?\n(default=strict)"
  type: string
  inputBinding:
    prefix: --errors
- id: in_output
  doc: save the fingerprints to FILENAME (default=stdout)
  type: File
  inputBinding:
    prefix: --output
- id: in_out
  doc: "output structure format (default guesses from output\nfilename, or is 'fps')"
  type: File
  inputBinding:
    prefix: --out
- id: in_software
  doc: use TEXT as the software description
  type: string
  inputBinding:
    prefix: --software
- id: in_type
  doc: use TEXT as the fingerprint type description
  type: string
  inputBinding:
    prefix: --type
- id: in_binary
  doc: "Encoded with the characters '0' and '1'. Bit #0 comes\nfirst. Example: 00100000\
    \ encodes the value 4"
  type: boolean
  inputBinding:
    prefix: --binary
- id: in_binary_msb
  doc: "Encoded with the characters '0' and '1'. Bit #0 comes\nlast. Example: 00000100\
    \ encodes the value 4"
  type: boolean
  inputBinding:
    prefix: --binary-msb
- id: in_hex
  doc: "Hex encoded. Bit #0 is the first bit (1<<0) of the\nfirst byte. Example: 01f2\
    \ encodes the value \\x01\\xf2 =\n498"
  type: boolean
  inputBinding:
    prefix: --hex
- id: in_hex_lsb
  doc: "Hex encoded. Bit #0 is the eigth bit (1<<7) of the\nfirst byte. Example: 804f\
    \ encodes the value \\x01\\xf2 =\n498"
  type: boolean
  inputBinding:
    prefix: --hex-lsb
- id: in_hex_msb
  doc: "Hex encoded. Bit #0 is the first bit (1<<0) of the\nlast byte. Example: f201\
    \ encodes the value \\x01\\xf2 =\n498"
  type: boolean
  inputBinding:
    prefix: --hex-msb
- id: in_base_six_four
  doc: "Base-64 encoded. Bit #0 is first bit (1<<0) of first\nbyte. Example: AfI=\
    \ encodes value \\x01\\xf2 = 498"
  type: boolean
  inputBinding:
    prefix: --base64
- id: in_cac_tvs
  doc: "CACTVS encoding, based on base64 and includes a\nversion and bit length"
  type: boolean
  inputBinding:
    prefix: --cactvs
- id: in_daylight
  doc: Daylight encoding, which is is base64 variant
  type: boolean
  inputBinding:
    prefix: --daylight
- id: in_decoder
  doc: import and use the DECODER function to decode the
  type: string
  inputBinding:
    prefix: --decoder
- id: in_pubchem
  doc: "decode CACTVS substructure keys used in PubChem. Same\nas --software=CACTVS/unknown\
    \ --type 'CACTVS-\nE_SCREEN/1.0 extended=2' --fp-\ntag=PUBCHEM_CACTVS_SUBSKEYS\
    \ --cactvs\n"
  type: boolean
  inputBinding:
    prefix: --pubchem
- id: in_filenames
  doc: input SD files (default is stdin)
  type: string
  inputBinding:
    position: 0
- id: in_compressed
  doc: --num-bits INT        use the first INT bits of the input. Use only when the
  type: string
  inputBinding:
    position: 0
- id: in_fingerprint
  doc: 'shortcuts:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "output structure format (default guesses from output\nfilename, or is 'fps')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- sdf2fps
