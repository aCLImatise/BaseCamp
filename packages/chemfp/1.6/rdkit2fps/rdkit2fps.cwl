class: CommandLineTool
id: rdkit2fps.cwl
inputs:
- id: in_fp_size
  doc: "number of bits in the fingerprint. Default of 2048 for\nRDK, Morgan, topological\
    \ torsion, atom pair, and\npattern fingerprints, and 512 for Avalon fingerprints"
  type: long
  inputBinding:
    prefix: --fpSize
- id: in_from_atoms
  doc: ",INT,...\nfingerprint generation must use these atom indices\n(out of range\
    \ indices are ignored)"
  type: long
  inputBinding:
    prefix: --from-atoms
- id: in_id_tag
  doc: tag name containing the record id (SD files only)
  type: string
  inputBinding:
    prefix: --id-tag
- id: in_in
  doc: input structure format (default guesses from filename)
  type: File
  inputBinding:
    prefix: --in
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
- id: in_errors
  doc: "how should structure parse errors be handled?\n(default=ignore)"
  type: string
  inputBinding:
    prefix: --errors
- id: in_rdk
  doc: generate RDK fingerprints (default)
  type: boolean
  inputBinding:
    prefix: --RDK
- id: in_min_path
  doc: "minimum number of bonds to include in the subgraph\n(default=1)"
  type: long
  inputBinding:
    prefix: --minPath
- id: in_max_path
  doc: "maximum number of bonds to include in the subgraph\n(default=7)"
  type: long
  inputBinding:
    prefix: --maxPath
- id: in_n_bits_per_hash
  doc: number of bits to set per path (default=2)
  type: long
  inputBinding:
    prefix: --nBitsPerHash
- id: in_use_hs
  doc: "|1           include information about the number of hydrogens on\neach atom\
    \ (default=1)"
  type: long
  inputBinding:
    prefix: --useHs
- id: in_morgan
  doc: generate Morgan fingerprints
  type: boolean
  inputBinding:
    prefix: --morgan
- id: in_radius
  doc: radius for the Morgan algorithm (default=2)
  type: long
  inputBinding:
    prefix: --radius
- id: in_use_features
  doc: '|1     use chemical-feature invariants (default=0)'
  type: long
  inputBinding:
    prefix: --useFeatures
- id: in_use_chirality
  doc: '|1    include chirality information (default=0)'
  type: long
  inputBinding:
    prefix: --useChirality
- id: in_use_bond_types
  doc: '|1    include bond type information (default=1)'
  type: long
  inputBinding:
    prefix: --useBondTypes
- id: in_torsions
  doc: generate Topological Torsion fingerprints
  type: boolean
  inputBinding:
    prefix: --torsions
- id: in_target_size
  doc: number of bits in the fingerprint (default=4)
  type: long
  inputBinding:
    prefix: --targetSize
- id: in_pairs
  doc: generate Atom Pair fingerprints
  type: boolean
  inputBinding:
    prefix: --pairs
- id: in_minlength
  doc: minimum bond count for a pair (default=1)
  type: long
  inputBinding:
    prefix: --minLength
- id: in_maxlength
  doc: maximum bond count for a pair (default=30)
  type: long
  inputBinding:
    prefix: --maxLength
- id: in_mac_cs_one_six_six
  doc: generate MACCS fingerprints
  type: boolean
  inputBinding:
    prefix: --maccs166
- id: in_avalon
  doc: generate Avalon fingerprints
  type: boolean
  inputBinding:
    prefix: --avalon
- id: in_is_query
  doc: "|1         is the fingerprint for a query structure? (1 if yes, 0\nif no)\
    \ (default=0)"
  type: long
  inputBinding:
    prefix: --isQuery
- id: in_bit_flags
  doc: "bit flags, SSSBits are 32767 and similarity bits are\n15761407 (default=15761407)"
  type: long
  inputBinding:
    prefix: --bitFlags
- id: in_pattern
  doc: generate (substructure) pattern fingerprints
  type: boolean
  inputBinding:
    prefix: --pattern
- id: in_sub_struct
  doc: generate ChemFP substructure fingerprints
  type: boolean
  inputBinding:
    prefix: --substruct
- id: in_rdma_ccs_slash_two
  doc: generate 166 bit RDKit/MACCS fingerprints (version 2)
  type: boolean
  inputBinding:
    prefix: --rdmaccs/2
- id: in_rdma_ccs_slash_one
  doc: use the version 1 definition for --rdmaccs
  type: boolean
  inputBinding:
    prefix: --rdmaccs/1
- id: in_filenames
  doc: input structure files (default is stdin)
  type: string
  inputBinding:
    position: 0
- id: in_smiles
  doc: smi, ism, usm, can, smi.gz, ism.gz, usm.gz, can.gz
  type: string
  inputBinding:
    position: 0
- id: in_sdf
  doc: sdf, mol, sd, mdl, sdf.gz, mol.gz, sd.gz, mdl.gz
  type: string
  inputBinding:
    position: 1
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
- rdkit2fps
