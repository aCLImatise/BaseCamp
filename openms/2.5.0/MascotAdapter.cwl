class: CommandLineTool
id: MascotAdapter.cwl
inputs:
- id: in
  doc: "*                      Input file in mzData format. Note: In mode 'mascot_out'\
    \ a Mascot results file (.mascotXML) is read"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                     Output file in idXML format. Note: In mode 'mascot_in'\
    \ Mascot generic format is written."
  type: File
  inputBinding:
    prefix: -out
- id: mascot_in
  doc: If this flag is set the MascotAdapter will read in mzData and write Mascot
    generic format
  type: boolean
  inputBinding:
    prefix: -mascot_in
- id: mascot_out
  doc: If this flag is set the MascotAdapter will read in a Mascot results file (.mascotXML)
    and write idXML
  type: boolean
  inputBinding:
    prefix: -mascot_out
- id: instrument
  doc: "The instrument that was used to measure the spectra (default: 'Default')"
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
- id: taxonomy
  doc: "The taxonomy (default: 'All entries' valid: 'All entries', '. . Archaea (Archaeobacteria)',\
    \ '. . Eukaryota (eucaryotes)', '. . . . Alveolata (alveolates)', '. . . . . .\
    \ Plasmo dium falciparum (malaria parasite)', '. . . . . . Other Alveolata', '.\
    \ . . . Metazoa (Animals)', '. . . . . . Caenorhabditis elegans', '. . . . . .\
    \ Drosophila (fruit flies)', '. . . . . . Chordata (vertebrates and relatives)',\
    \ '. . . . . . . . bony vertebrates', '. . . . . . . . . . lobe-finned fish and\
    \ tetrapod clade', '. . . . . . . . . . . . Mammalia (mammals)', '. . . . . .\
    \ . . . . . . . . Primates', '. . . . . . . . . . . . . . . . Homo sapiens (human)',\
    \ '. . . . . . . . . . . . . . . . Other primates', '. . . . . . . . . . . . .\
    \ . Rodentia (Rodents)', '. . . . . . . . . . . . . . . . Mus.', '. . . . . .\
    \ . . . . . . . . . . . . Mus musculus (house mouse)', '. . . . . . . . . . .\
    \ . . . . . Rattus', '. . . . . . . . . . . . . . . . Other rodentia', '. . .\
    \ . . . . . . . . . . . Other mammalia', '. . . . . . . . . . . . Xenopus laevis\
    \ (African clawed frog)' , '. . . . . . . . . . . . Other lobe-finned fish and\
    \ tetrapod clade', '. . . . . . . . . . Actinopterygii (ray-finned fishes)', '.\
    \ . . . . . . . . . . . Takifugu rubripes (Japanese Pufferfish)', '. . . . . .\
    \ . . . . . . Danio rerio (zebra fish)', '. . . . . . . . . . . . Other Actinopterygii',\
    \ '. . . . . . . . Other Chordata', '. . . . . . Othe ... ed', '. . Species information\
    \ unavailable')"
  type: string
  inputBinding:
    prefix: -taxonomy
- id: modifications
  doc: The modifications i.e. Carboxymethyl (C)
  type: string
  inputBinding:
    prefix: -modifications
- id: variable_modifications
  doc: The variable modifications i.e. Carboxymethyl (C)
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: charges
  doc: "[1+ 2+ ...]             The different charge states (default: '[1+ 2+ 3+]')"
  type: boolean
  inputBinding:
    prefix: -charges
- id: db
  doc: "The database to search in (default: 'MSDB')"
  type: string
  inputBinding:
    prefix: -db
- id: hits
  doc: "The number of hits to report (default: 'AUTO')"
  type: string
  inputBinding:
    prefix: -hits
- id: cleavage
  doc: "The enzyme descriptor to the enzyme used for digestion. (Trypsin is default,\
    \ None would be best for peptide input or unspecific digestion, for more please\
    \ refer to your mascot server). (default: 'Trypsin' valid: 'Trypsin', 'Arg-C',\
    \ 'Asp-N', 'Asp-N_ambic', 'Chymotrypsin', 'CNBr', 'CNBr+Trypsin', 'Formic_acid',\
    \ 'Lys-C', 'Lys-C/P', 'PepsinA', 'Tryp-CN Br', 'TrypChymo', 'Trypsin/P', 'V8-DE',\
    \ 'V8-E', 'semiTrypsin', 'LysC+AspN', 'None')"
  type: string
  inputBinding:
    prefix: -cleavage
- id: missed_cleavages
  doc: "Number of allowed missed cleavages (default: '0' min: '0')"
  type: string
  inputBinding:
    prefix: -missed_cleavages
- id: sig_threshold
  doc: "Significance threshold (default: '0.05')"
  type: string
  inputBinding:
    prefix: -sig_threshold
- id: pep_homol
  doc: "Peptide homology threshold (default: '1.0')"
  type: string
  inputBinding:
    prefix: -pep_homol
- id: pep_ident
  doc: "Peptide ident threshold (default: '1.0')"
  type: string
  inputBinding:
    prefix: -pep_ident
- id: pep_rank
  doc: "Peptide rank (default: '1')"
  type: string
  inputBinding:
    prefix: -pep_rank
- id: prot_score
  doc: "Protein score (default: '1.0')"
  type: string
  inputBinding:
    prefix: -prot_score
- id: pep_score
  doc: "Peptide score (default: '1.0')"
  type: string
  inputBinding:
    prefix: -pep_score
- id: pep_exp_z
  doc: "Peptide expected charge (default: '1')"
  type: string
  inputBinding:
    prefix: -pep_exp_z
- id: show_unassigned
  doc: "Show_unassigned (default: '1')"
  type: string
  inputBinding:
    prefix: -show_unassigned
- id: first_dim_rt
  doc: "Additional information which is added to every peptide identification as metavalue\
    \ if set > 0 (default: '0.0')"
  type: string
  inputBinding:
    prefix: -first_dim_rt
- id: boundary
  doc: MIME boundary for mascot output format
  type: string
  inputBinding:
    prefix: -boundary
- id: mass_type
  doc: "Mass type (default: 'Monoisotopic' valid: 'Monoisotopic', 'Average')"
  type: string
  inputBinding:
    prefix: -mass_type
- id: mascot_directory
  doc: The directory in which mascot is located
  type: string
  inputBinding:
    prefix: -mascot_directory
- id: temp_data_directory
  doc: A directory in which some temporary files can be stored
  type: string
  inputBinding:
    prefix: -temp_data_directory
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
- MascotAdapter
