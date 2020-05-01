#!/usr/bin/env cwl-runner

baseCommand:
- InspectAdapter
class: CommandLineTool
cwlVersion: v1.0
id: inspectadapter
inputs:
- doc: "*                      Input file in mzXML or mzData format. Note: In mode\
    \ 'inspect_out' an Inspect results file is read. (valid formats: 'mzXML', 'mzData')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                     Output file in idXML format. Note: In mode 'inspect_in'\
    \ an Inspect input file is written. (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: If this flag is set the InspectAdapter will read in mzXML, write an Inspect
    input file and generate a trie database
  id: inspect_in
  inputBinding:
    prefix: -inspect_in
  type: boolean
- doc: If this flag is set the InspectAdapter will read in a Inspect results file
    and write idXML
  id: inspect_out
  inputBinding:
    prefix: -inspect_out
  type: boolean
- doc: The directory in which Inspect is located
  id: inspect_directory
  inputBinding:
    prefix: -inspect_directory
  type: string
- doc: A directory in which some temporary files can be stored
  id: temp_data_directory
  inputBinding:
    prefix: -temp_data_directory
  type: string
- doc: Name(s) of database(s) to search in (FASTA and SwissProt supported)
  id: dbs
  inputBinding:
    prefix: -dbs
  type: File
- doc: Name(s) of databases(s) to search in (trie-format)
  id: trie_dbs
  inputBinding:
    prefix: -trie_dbs
  type: File
- doc: Name of the merged trie database
  id: new_db
  inputBinding:
    prefix: -new_db
  type: File
- doc: "The instrument that was used to measure the spectra (If set to QTOF, uses\
    \ a QTOF-derived fragmentation model, and does not attempt to correct the parent\
    \ mass.) (valid: 'ESI-ION-TRAP', 'QTOF', 'FT-Hybrid')"
  id: instrument
  inputBinding:
    prefix: -instrument
  type: string
- doc: "The precursor mass tolerance (default: '2.0')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "The peak mass tolerance (default: '1.0')"
  id: peak_mass_tolerance
  inputBinding:
    prefix: -peak_mass_tolerance
  type: string
- doc: Show a list of the available modifications
  id: list_modifications
  inputBinding:
    prefix: -list_modifications
  type: boolean
- doc: 'The colon-separated modifications; may be <name>,<type>, e.g.: Deamidation,opt
    or <composition>,<residues>,<type>,<name>, e.g.: H2C2O,KCS,opt,Acetyl or <mass>,<residues>,<type>,<name>,
    e.g.: 42.0367,KCS,opt,Acetyl or Valid values for type are "fix" and "opt" (default)
    If you want terminal PTMs, write "cterm" or "nterm" instead of residues'
  id: modifications
  inputBinding:
    prefix: -modifications
  type: string
- doc: Use monoisotopic masses for the modifications
  id: use_mono_isotopic_mod_mass
  inputBinding:
    prefix: -use_monoisotopic_mod_mass
  type: boolean
- doc: Name of an XML file with the modifications
  id: modifications_xml_file
  inputBinding:
    prefix: -modifications_xml_file
  type: File
- doc: "The enzyme used for digestion (default: 'Trypsin')"
  id: cleavage
  inputBinding:
    prefix: -cleavage
  type: string
- doc: Name for the output file of Inspect (may only be used in a full run)
  id: inspect_output
  inputBinding:
    prefix: -inspect_output
  type: File
- doc: Name for the input file of Inspect (may only be used in a full run)
  id: inspect_input
  inputBinding:
    prefix: -inspect_input
  type: File
- doc: Attempt to guess the precursor charge and mass, and consider multiple charge
    states if feasible
  id: multi_charge
  inputBinding:
    prefix: -multicharge
  type: boolean
- doc: "Number of PTMs permitted in a single peptide. (default: '-1')"
  id: max_modifications_pp
  inputBinding:
    prefix: -max_modifications_pp
  type: string
- doc: "Number of tags to generate (default: '-1')"
  id: tag_count
  inputBinding:
    prefix: -tag_count
  type: string
- doc: No temporary databases are used
  id: no_tmp_dbs
  inputBinding:
    prefix: -no_tmp_dbs
  type: boolean
- doc: "Annotations with inferior p-value are ignored (default: '1.0')"
  id: p_value
  inputBinding:
    prefix: -p_value
  type: string
- doc: :blind                     Perform a blind search (allowing arbitrary modification
    masses), is preceeded by a normal search to gain a smaller database. (in full
    mode only)
  id: blind
  inputBinding:
    prefix: -blind
  type: boolean
- doc: :blind_only                Like blind but no prior search is performed to reduce
    the database size
  id: blind
  inputBinding:
    prefix: -blind
  type: boolean
- doc: ":p_value_blind <prob>      Used for generating the minimized database (default:\
    \ '1.0')"
  id: blind
  inputBinding:
    prefix: -blind
  type: boolean
- doc: :snd_db <file>             Name of the minimized trie database generated when
    using blind mode.
  id: blind
  inputBinding:
    prefix: -blind
  type: boolean
- doc: ":max_ptm_size <num>        Maximum modification size (in Da) to consider (default:\
    \ '250.0')"
  id: blind
  inputBinding:
    prefix: -blind
  type: boolean
- doc: "Name of the contact (default: 'unknown')"
  id: contact_name
  inputBinding:
    prefix: -contact_name
  type: string
- doc: "Name of the contact institution (default: 'unknown')"
  id: contact_institution
  inputBinding:
    prefix: -contact_institution
  type: string
- doc: "Some information about the contact (default: 'unknown')"
  id: contact_info
  inputBinding:
    prefix: -contact_info
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
