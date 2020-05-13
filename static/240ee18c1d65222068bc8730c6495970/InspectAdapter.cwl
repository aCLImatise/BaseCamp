class: CommandLineTool
id: InspectAdapter.cwl
inputs:
- id: in
  doc: "*                      Input file in mzXML or mzData format. Note: In mode\
    \ 'inspect_out' an Inspect results file is read. (valid formats: 'mzXML', 'mzData')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                     Output file in idXML format. Note: In mode 'inspect_in'\
    \ an Inspect input file is written. (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: inspect_in
  doc: If this flag is set the InspectAdapter will read in mzXML, write an Inspect
    input file and generate a trie database
  type: boolean
  inputBinding:
    prefix: -inspect_in
- id: inspect_out
  doc: If this flag is set the InspectAdapter will read in a Inspect results file
    and write idXML
  type: boolean
  inputBinding:
    prefix: -inspect_out
- id: inspect_directory
  doc: The directory in which Inspect is located
  type: string
  inputBinding:
    prefix: -inspect_directory
- id: temp_data_directory
  doc: A directory in which some temporary files can be stored
  type: string
  inputBinding:
    prefix: -temp_data_directory
- id: dbs
  doc: Name(s) of database(s) to search in (FASTA and SwissProt supported)
  type: File
  inputBinding:
    prefix: -dbs
- id: trie_dbs
  doc: Name(s) of databases(s) to search in (trie-format)
  type: File
  inputBinding:
    prefix: -trie_dbs
- id: new_db
  doc: Name of the merged trie database
  type: File
  inputBinding:
    prefix: -new_db
- id: instrument
  doc: "The instrument that was used to measure the spectra (If set to QTOF, uses\
    \ a QTOF-derived fragmentation model, and does not attempt to correct the parent\
    \ mass.) (valid: 'ESI-ION-TRAP', 'QTOF', 'FT-Hybrid')"
  type: string
  inputBinding:
    prefix: -instrument
- id: precursor_mass_tolerance
  doc: "The precursor mass tolerance (default: '2.0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: peak_mass_tolerance
  doc: "The peak mass tolerance (default: '1.0')"
  type: string
  inputBinding:
    prefix: -peak_mass_tolerance
- id: list_modifications
  doc: Show a list of the available modifications
  type: boolean
  inputBinding:
    prefix: -list_modifications
- id: modifications
  doc: 'The colon-separated modifications; may be <name>,<type>, e.g.: Deamidation,opt
    or <composition>,<residues>,<type>,<name>, e.g.: H2C2O,KCS,opt,Acetyl or <mass>,<residues>,<type>,<name>,
    e.g.: 42.0367,KCS,opt,Acetyl or Valid values for type are "fix" and "opt" (default)
    If you want terminal PTMs, write "cterm" or "nterm" instead of residues'
  type: string
  inputBinding:
    prefix: -modifications
- id: use_mono_isotopic_mod_mass
  doc: Use monoisotopic masses for the modifications
  type: boolean
  inputBinding:
    prefix: -use_monoisotopic_mod_mass
- id: modifications_xml_file
  doc: Name of an XML file with the modifications
  type: File
  inputBinding:
    prefix: -modifications_xml_file
- id: cleavage
  doc: "The enzyme used for digestion (default: 'Trypsin')"
  type: string
  inputBinding:
    prefix: -cleavage
- id: inspect_output
  doc: Name for the output file of Inspect (may only be used in a full run)
  type: File
  inputBinding:
    prefix: -inspect_output
- id: inspect_input
  doc: Name for the input file of Inspect (may only be used in a full run)
  type: File
  inputBinding:
    prefix: -inspect_input
- id: multi_charge
  doc: Attempt to guess the precursor charge and mass, and consider multiple charge
    states if feasible
  type: boolean
  inputBinding:
    prefix: -multicharge
- id: max_modifications_pp
  doc: "Number of PTMs permitted in a single peptide. (default: '-1')"
  type: string
  inputBinding:
    prefix: -max_modifications_pp
- id: tag_count
  doc: "Number of tags to generate (default: '-1')"
  type: string
  inputBinding:
    prefix: -tag_count
- id: no_tmp_dbs
  doc: No temporary databases are used
  type: boolean
  inputBinding:
    prefix: -no_tmp_dbs
- id: p_value
  doc: "Annotations with inferior p-value are ignored (default: '1.0')"
  type: string
  inputBinding:
    prefix: -p_value
- id: blind
  doc: :blind                     Perform a blind search (allowing arbitrary modification
    masses), is preceeded by a normal search to gain a smaller database. (in full
    mode only)
  type: boolean
  inputBinding:
    prefix: -blind
- id: blind
  doc: :blind_only                Like blind but no prior search is performed to reduce
    the database size
  type: boolean
  inputBinding:
    prefix: -blind
- id: blind
  doc: ":p_value_blind <prob>      Used for generating the minimized database (default:\
    \ '1.0')"
  type: boolean
  inputBinding:
    prefix: -blind
- id: blind
  doc: :snd_db <file>             Name of the minimized trie database generated when
    using blind mode.
  type: boolean
  inputBinding:
    prefix: -blind
- id: blind
  doc: ":max_ptm_size <num>        Maximum modification size (in Da) to consider (default:\
    \ '250.0')"
  type: boolean
  inputBinding:
    prefix: -blind
- id: contact_name
  doc: "Name of the contact (default: 'unknown')"
  type: string
  inputBinding:
    prefix: -contact_name
- id: contact_institution
  doc: "Name of the contact institution (default: 'unknown')"
  type: string
  inputBinding:
    prefix: -contact_institution
- id: contact_info
  doc: "Some information about the contact (default: 'unknown')"
  type: string
  inputBinding:
    prefix: -contact_info
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- InspectAdapter
