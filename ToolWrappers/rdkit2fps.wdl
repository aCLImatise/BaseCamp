version 1.0

task Rdkit2fps {
  input {
    Int? fp_size
    Int? from_atoms
    String? id_tag
    File? in
    File? save_fingerprints_filename
    File? out
    String? errors
    Boolean? rdk
    Int? min_path
    Int? max_path
    Int? n_bits_per_hash
    Int? use_hs
    Boolean? morgan
    Int? radius
    Int? use_features
    Int? use_chirality
    Int? use_bond_types
    Boolean? torsions
    Int? target_size
    Boolean? pairs
    Int? minlength
    Int? maxlength
    Boolean? mac_cs_one_six_six
    Boolean? avalon
    Int? is_query
    Int? bit_flags
    Boolean? pattern
    Boolean? sub_struct
    Boolean? rdma_ccs_slash_two
    Boolean? rdma_ccs_slash_one
    String filenames
    String smiles
    String sdf
  }
  command <<<
    rdkit2fps \
      ~{filenames} \
      ~{smiles} \
      ~{sdf} \
      ~{if defined(fp_size) then ("--fpSize " +  '"' + fp_size + '"') else ""} \
      ~{if defined(from_atoms) then ("--from-atoms " +  '"' + from_atoms + '"') else ""} \
      ~{if defined(id_tag) then ("--id-tag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if (rdk) then "--RDK" else ""} \
      ~{if defined(min_path) then ("--minPath " +  '"' + min_path + '"') else ""} \
      ~{if defined(max_path) then ("--maxPath " +  '"' + max_path + '"') else ""} \
      ~{if defined(n_bits_per_hash) then ("--nBitsPerHash " +  '"' + n_bits_per_hash + '"') else ""} \
      ~{if defined(use_hs) then ("--useHs " +  '"' + use_hs + '"') else ""} \
      ~{if (morgan) then "--morgan" else ""} \
      ~{if defined(radius) then ("--radius " +  '"' + radius + '"') else ""} \
      ~{if defined(use_features) then ("--useFeatures " +  '"' + use_features + '"') else ""} \
      ~{if defined(use_chirality) then ("--useChirality " +  '"' + use_chirality + '"') else ""} \
      ~{if defined(use_bond_types) then ("--useBondTypes " +  '"' + use_bond_types + '"') else ""} \
      ~{if (torsions) then "--torsions" else ""} \
      ~{if defined(target_size) then ("--targetSize " +  '"' + target_size + '"') else ""} \
      ~{if (pairs) then "--pairs" else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{if defined(maxlength) then ("--maxLength " +  '"' + maxlength + '"') else ""} \
      ~{if (mac_cs_one_six_six) then "--maccs166" else ""} \
      ~{if (avalon) then "--avalon" else ""} \
      ~{if defined(is_query) then ("--isQuery " +  '"' + is_query + '"') else ""} \
      ~{if defined(bit_flags) then ("--bitFlags " +  '"' + bit_flags + '"') else ""} \
      ~{if (pattern) then "--pattern" else ""} \
      ~{if (sub_struct) then "--substruct" else ""} \
      ~{if (rdma_ccs_slash_two) then "--rdmaccs/2" else ""} \
      ~{if (rdma_ccs_slash_one) then "--rdmaccs/1" else ""}
  >>>
  parameter_meta {
    fp_size: "number of bits in the fingerprint. Default of 2048 for\\nRDK, Morgan, topological torsion, atom pair, and\\npattern fingerprints, and 512 for Avalon fingerprints"
    from_atoms: ",INT,...\\nfingerprint generation must use these atom indices\\n(out of range indices are ignored)"
    id_tag: "tag name containing the record id (SD files only)"
    in: "input structure format (default guesses from filename)"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output structure format (default guesses from output\\nfilename, or is 'fps')"
    errors: "how should structure parse errors be handled?\\n(default=ignore)"
    rdk: "generate RDK fingerprints (default)"
    min_path: "minimum number of bonds to include in the subgraph\\n(default=1)"
    max_path: "maximum number of bonds to include in the subgraph\\n(default=7)"
    n_bits_per_hash: "number of bits to set per path (default=2)"
    use_hs: "|1           include information about the number of hydrogens on\\neach atom (default=1)"
    morgan: "generate Morgan fingerprints"
    radius: "radius for the Morgan algorithm (default=2)"
    use_features: "|1     use chemical-feature invariants (default=0)"
    use_chirality: "|1    include chirality information (default=0)"
    use_bond_types: "|1    include bond type information (default=1)"
    torsions: "generate Topological Torsion fingerprints"
    target_size: "number of bits in the fingerprint (default=4)"
    pairs: "generate Atom Pair fingerprints"
    minlength: "minimum bond count for a pair (default=1)"
    maxlength: "maximum bond count for a pair (default=30)"
    mac_cs_one_six_six: "generate MACCS fingerprints"
    avalon: "generate Avalon fingerprints"
    is_query: "|1         is the fingerprint for a query structure? (1 if yes, 0\\nif no) (default=0)"
    bit_flags: "bit flags, SSSBits are 32767 and similarity bits are\\n15761407 (default=15761407)"
    pattern: "generate (substructure) pattern fingerprints"
    sub_struct: "generate ChemFP substructure fingerprints"
    rdma_ccs_slash_two: "generate 166 bit RDKit/MACCS fingerprints (version 2)"
    rdma_ccs_slash_one: "use the version 1 definition for --rdmaccs"
    filenames: "input structure files (default is stdin)"
    smiles: "smi, ism, usm, can, smi.gz, ism.gz, usm.gz, can.gz"
    sdf: "sdf, mol, sd, mdl, sdf.gz, mol.gz, sd.gz, mdl.gz"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}