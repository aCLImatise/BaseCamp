class: CommandLineTool
id: InspectAdapter.cwl
inputs:
- id: in_in
  doc: "*                      Input file in mzXML or mzData format.\nNote: In mode\
    \ 'inspect_out' an Inspect results file is read. (valid formats: 'mzXML', 'mzData')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                     Output file in idXML format.\nNote: In mode 'inspect_in'\
    \ an Inspect input file is written. (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_inspect_in
  doc: "If this flag is set the InspectAdapter will read in mzXML,\nwrite an Inspect\
    \ input file and generate a trie database"
  type: boolean?
  inputBinding:
    prefix: -inspect_in
- id: in_inspect_out
  doc: "If this flag is set the InspectAdapter will read in a Inspect results file\n\
    and write idXML"
  type: boolean?
  inputBinding:
    prefix: -inspect_out
- id: in_inspect_directory
  doc: The directory in which Inspect is located
  type: Directory?
  inputBinding:
    prefix: -inspect_directory
- id: in_temp_data_directory
  doc: A directory in which some temporary files can be stored
  type: Directory?
  inputBinding:
    prefix: -temp_data_directory
- id: in_dbs
  doc: Name(s) of database(s) to search in (FASTA and SwissProt supported)
  type: File?
  inputBinding:
    prefix: -dbs
- id: in_trie_dbs
  doc: Name(s) of databases(s) to search in (trie-format)
  type: File?
  inputBinding:
    prefix: -trie_dbs
- id: in_new_db
  doc: Name of the merged trie database
  type: File?
  inputBinding:
    prefix: -new_db
- id: in_instrument
  doc: "The instrument that was used to measure the spectra\n(If set to QTOF, uses\
    \ a QTOF-derived fragmentation model,\nand does not attempt to correct the parent\
    \ mass.) (valid: 'ESI-ION-TRAP', 'QTOF', 'FT-Hybrid')"
  type: string?
  inputBinding:
    prefix: -instrument
- id: in_precursor_mass_tolerance
  doc: "The precursor mass tolerance (default: '2')"
  type: long?
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: in_peak_mass_tolerance
  doc: "The peak mass tolerance (default: '1')"
  type: long?
  inputBinding:
    prefix: -peak_mass_tolerance
- id: in_list_modifications
  doc: Show a list of the available modifications
  type: boolean?
  inputBinding:
    prefix: -list_modifications
- id: in_modifications
  doc: "The colon-separated modifications; may be\n<name>,<type>, e.g.: Deamidation,opt\
    \ or\n<composition>,<residues>,<type>,<name>, e.g.: H2C2O,KCS,opt,Acetyl or\n\
    <mass>,<residues>,<type>,<name>, e.g.: 42.0367,KCS,opt,Acetyl or\nValid values\
    \ for type are \"fix\" and \"opt\" (default)\nIf you want terminal PTMs, write\
    \ \"cterm\" or \"nterm\" instead of residues"
  type: double?
  inputBinding:
    prefix: -modifications
- id: in_use_mono_isotopic_mod_mass
  doc: Use monoisotopic masses for the modifications
  type: boolean?
  inputBinding:
    prefix: -use_monoisotopic_mod_mass
- id: in_modifications_xml_file
  doc: Name of an XML file with the modifications
  type: File?
  inputBinding:
    prefix: -modifications_xml_file
- id: in_cleavage
  doc: "The enzyme used for digestion (default: 'Trypsin')"
  type: string?
  inputBinding:
    prefix: -cleavage
- id: in_inspect_output
  doc: Name for the output file of Inspect (may only be used in a full run)
  type: File?
  inputBinding:
    prefix: -inspect_output
- id: in_inspect_input
  doc: Name for the input file of Inspect (may only be used in a full run)
  type: File?
  inputBinding:
    prefix: -inspect_input
- id: in_multi_charge
  doc: "Attempt to guess the precursor charge and mass,\nand consider multiple charge\
    \ states if feasible"
  type: boolean?
  inputBinding:
    prefix: -multicharge
- id: in_max_modifications_pp
  doc: "Number of PTMs permitted in a single peptide. (default: '-1')"
  type: long?
  inputBinding:
    prefix: -max_modifications_pp
- id: in_tag_count
  doc: "Number of tags to generate (default: '-1')"
  type: long?
  inputBinding:
    prefix: -tag_count
- id: in_no_tmp_dbs
  doc: No temporary databases are used
  type: boolean?
  inputBinding:
    prefix: -no_tmp_dbs
- id: in_p_value
  doc: "Annotations with inferior p-value are ignored (default: '1')"
  type: long?
  inputBinding:
    prefix: -p_value
- id: in_contact_name
  doc: "Name of the contact (default: 'unknown')"
  type: string?
  inputBinding:
    prefix: -contact_name
- id: in_contact_institution
  doc: "Name of the contact institution (default: 'unknown')"
  type: string?
  inputBinding:
    prefix: -contact_institution
- id: in_contact_info
  doc: "Some information about the contact (default: 'unknown')"
  type: string?
  inputBinding:
    prefix: -contact_info
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_inspect_output
  doc: Name for the output file of Inspect (may only be used in a full run)
  type: File?
  outputBinding:
    glob: $(inputs.in_inspect_output)
hints: []
cwlVersion: v1.1
baseCommand:
- InspectAdapter
