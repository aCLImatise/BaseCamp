version 1.0

task Sdf2fps {
  input {
    String? id_tag
    String? fp_tag
    String? in
    Int? num_bits
    String? errors
    File? save_fingerprints_filename
    String? out
    String? software
    String? type
    Boolean? binary
    Boolean? binary_msb
    Boolean? hex
    Boolean? hex_lsb
    Boolean? hex_msb
    Boolean? base_six_four
    Boolean? cac_tvs
    Boolean? daylight
    String? decoder
    Boolean? pubchem
    File filenames
  }
  command <<<
    sdf2fps \
      ~{filenames} \
      ~{if defined(id_tag) then ("--id-tag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(fp_tag) then ("--fp-tag " +  '"' + fp_tag + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(num_bits) then ("--num-bits " +  '"' + num_bits + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(software) then ("--software " +  '"' + software + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--binary" false="" binary} \
      ~{true="--binary-msb" false="" binary_msb} \
      ~{true="--hex" false="" hex} \
      ~{true="--hex-lsb" false="" hex_lsb} \
      ~{true="--hex-msb" false="" hex_msb} \
      ~{true="--base64" false="" base_six_four} \
      ~{true="--cactvs" false="" cac_tvs} \
      ~{true="--daylight" false="" daylight} \
      ~{if defined(decoder) then ("--decoder " +  '"' + decoder + '"') else ""} \
      ~{true="--pubchem" false="" pubchem}
  >>>
  parameter_meta {
    id_tag: "get the record id from TAG instead of the first line of the record"
    fp_tag: "get the fingerprint from tag TAG (required)"
    in: "Specify if the input SD file is uncompressed or gzip compressed"
    num_bits: "use the first INT bits of the input. Use only when the last 1-7 bits of the last byte are not part of the fingerprint. Unexpected errors will occur if these bits are not all zero."
    errors: "how should structure parse errors be handled? (default=strict)"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output structure format (default guesses from output filename, or is 'fps')"
    software: "use TEXT as the software description"
    type: "use TEXT as the fingerprint type description"
    binary: "Encoded with the characters '0' and '1'. Bit #0 comes first. Example: 00100000 encodes the value 4"
    binary_msb: "Encoded with the characters '0' and '1'. Bit #0 comes last. Example: 00000100 encodes the value 4"
    hex: "Hex encoded. Bit #0 is the first bit (1<<0) of the first byte. Example: 01f2 encodes the value \x01\xf2 = 498"
    hex_lsb: "Hex encoded. Bit #0 is the eigth bit (1<<7) of the first byte. Example: 804f encodes the value \x01\xf2 = 498"
    hex_msb: "Hex encoded. Bit #0 is the first bit (1<<0) of the last byte. Example: f201 encodes the value \x01\xf2 = 498"
    base_six_four: "Base-64 encoded. Bit #0 is first bit (1<<0) of first byte. Example: AfI= encodes value \x01\xf2 = 498"
    cac_tvs: "CACTVS encoding, based on base64 and includes a version and bit length"
    daylight: "Daylight encoding, which is is base64 variant"
    decoder: "import and use the DECODER function to decode the fingerprint"
    pubchem: "decode CACTVS substructure keys used in PubChem. Same as --software=CACTVS/unknown --type 'CACTVS- E_SCREEN/1.0 extended=2' --fp- tag=PUBCHEM_CACTVS_SUBSKEYS --cactvs"
    filenames: "input SD files (default is stdin)"
  }
}