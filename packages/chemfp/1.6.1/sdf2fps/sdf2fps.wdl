version 1.0

task Sdf2fps {
  input {
    String? id_tag
    String? fp_tag
    File? in
    String? errors
    File? save_fingerprints_filename
    File? out
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
    String filenames
    String compressed
    String fingerprint
  }
  command <<<
    sdf2fps \
      ~{filenames} \
      ~{compressed} \
      ~{fingerprint} \
      ~{if defined(id_tag) then ("--id-tag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(fp_tag) then ("--fp-tag " +  '"' + fp_tag + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(software) then ("--software " +  '"' + software + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if (binary_msb) then "--binary-msb" else ""} \
      ~{if (hex) then "--hex" else ""} \
      ~{if (hex_lsb) then "--hex-lsb" else ""} \
      ~{if (hex_msb) then "--hex-msb" else ""} \
      ~{if (base_six_four) then "--base64" else ""} \
      ~{if (cac_tvs) then "--cactvs" else ""} \
      ~{if (daylight) then "--daylight" else ""} \
      ~{if defined(decoder) then ("--decoder " +  '"' + decoder + '"') else ""} \
      ~{if (pubchem) then "--pubchem" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0"
  }
  parameter_meta {
    id_tag: "get the record id from TAG instead of the first line\\nof the record"
    fp_tag: "get the fingerprint from tag TAG (required)"
    in: "Specify if the input SD file is uncompressed or gzip"
    errors: "how should structure parse errors be handled?\\n(default=strict)"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output structure format (default guesses from output\\nfilename, or is 'fps')"
    software: "use TEXT as the software description"
    type: "use TEXT as the fingerprint type description"
    binary: "Encoded with the characters '0' and '1'. Bit #0 comes\\nfirst. Example: 00100000 encodes the value 4"
    binary_msb: "Encoded with the characters '0' and '1'. Bit #0 comes\\nlast. Example: 00000100 encodes the value 4"
    hex: "Hex encoded. Bit #0 is the first bit (1<<0) of the\\nfirst byte. Example: 01f2 encodes the value \\x01\\xf2 =\\n498"
    hex_lsb: "Hex encoded. Bit #0 is the eigth bit (1<<7) of the\\nfirst byte. Example: 804f encodes the value \\x01\\xf2 =\\n498"
    hex_msb: "Hex encoded. Bit #0 is the first bit (1<<0) of the\\nlast byte. Example: f201 encodes the value \\x01\\xf2 =\\n498"
    base_six_four: "Base-64 encoded. Bit #0 is first bit (1<<0) of first\\nbyte. Example: AfI= encodes value \\x01\\xf2 = 498"
    cac_tvs: "CACTVS encoding, based on base64 and includes a\\nversion and bit length"
    daylight: "Daylight encoding, which is is base64 variant"
    decoder: "import and use the DECODER function to decode the"
    pubchem: "decode CACTVS substructure keys used in PubChem. Same\\nas --software=CACTVS/unknown --type 'CACTVS-\\nE_SCREEN/1.0 extended=2' --fp-\\ntag=PUBCHEM_CACTVS_SUBSKEYS --cactvs\\n"
    filenames: "input SD files (default is stdin)"
    compressed: "--num-bits INT        use the first INT bits of the input. Use only when the"
    fingerprint: "shortcuts:"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}