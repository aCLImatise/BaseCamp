#!/usr/bin/env cwl-runner

baseCommand:
- MascotAdapter
class: CommandLineTool
cwlVersion: v1.0
id: mascotadapter
inputs:
- doc: "*                      Input file in mzData format. Note: In mode 'mascot_out'\
    \ a Mascot results file (.mascotXML) is read"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                     Output file in idXML format. Note: In mode 'mascot_in'\
    \ Mascot generic format is written."
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: If this flag is set the MascotAdapter will read in mzData and write Mascot
    generic format
  id: mascot_in
  inputBinding:
    prefix: -mascot_in
  type: boolean
- doc: If this flag is set the MascotAdapter will read in a Mascot results file (.mascotXML)
    and write idXML
  id: mascot_out
  inputBinding:
    prefix: -mascot_out
  type: boolean
- doc: "The instrument that was used to measure the spectra (default: 'Default')"
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
- doc: "The taxonomy (default: 'All entries' valid: 'All entries', '. . Archaea (Archaeobacteria)',\
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
  id: taxonomy
  inputBinding:
    prefix: -taxonomy
  type: string
- doc: The modifications i.e. Carboxymethyl (C)
  id: modifications
  inputBinding:
    prefix: -modifications
  type: string
- doc: The variable modifications i.e. Carboxymethyl (C)
  id: variable_modifications
  inputBinding:
    prefix: -variable_modifications
  type: string
- doc: "[1+ 2+ ...]             The different charge states (default: '[1+ 2+ 3+]')"
  id: charges
  inputBinding:
    prefix: -charges
  type: boolean
- doc: "The database to search in (default: 'MSDB')"
  id: db
  inputBinding:
    prefix: -db
  type: string
- doc: "The number of hits to report (default: 'AUTO')"
  id: hits
  inputBinding:
    prefix: -hits
  type: string
- doc: "The enzyme descriptor to the enzyme used for digestion. (Trypsin is default,\
    \ None would be best for peptide input or unspecific digestion, for more please\
    \ refer to your mascot server). (default: 'Trypsin' valid: 'Trypsin', 'Arg-C',\
    \ 'Asp-N', 'Asp-N_ambic', 'Chymotrypsin', 'CNBr', 'CNBr+Trypsin', 'Formic_acid',\
    \ 'Lys-C', 'Lys-C/P', 'PepsinA', 'Tryp-CN Br', 'TrypChymo', 'Trypsin/P', 'V8-DE',\
    \ 'V8-E', 'semiTrypsin', 'LysC+AspN', 'None')"
  id: cleavage
  inputBinding:
    prefix: -cleavage
  type: string
- doc: "Number of allowed missed cleavages (default: '0' min: '0')"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: string
- doc: "Significance threshold (default: '0.05')"
  id: sig_threshold
  inputBinding:
    prefix: -sig_threshold
  type: string
- doc: "Peptide homology threshold (default: '1.0')"
  id: pep_homol
  inputBinding:
    prefix: -pep_homol
  type: string
- doc: "Peptide ident threshold (default: '1.0')"
  id: pep_ident
  inputBinding:
    prefix: -pep_ident
  type: string
- doc: "Peptide rank (default: '1')"
  id: pep_rank
  inputBinding:
    prefix: -pep_rank
  type: string
- doc: "Protein score (default: '1.0')"
  id: prot_score
  inputBinding:
    prefix: -prot_score
  type: string
- doc: "Peptide score (default: '1.0')"
  id: pep_score
  inputBinding:
    prefix: -pep_score
  type: string
- doc: "Peptide expected charge (default: '1')"
  id: pep_exp_z
  inputBinding:
    prefix: -pep_exp_z
  type: string
- doc: "Show_unassigned (default: '1')"
  id: show_unassigned
  inputBinding:
    prefix: -show_unassigned
  type: string
- doc: "Additional information which is added to every peptide identification as metavalue\
    \ if set > 0 (default: '0.0')"
  id: first_dim_rt
  inputBinding:
    prefix: -first_dim_rt
  type: string
- doc: MIME boundary for mascot output format
  id: boundary
  inputBinding:
    prefix: -boundary
  type: string
- doc: "Mass type (default: 'Monoisotopic' valid: 'Monoisotopic', 'Average')"
  id: mass_type
  inputBinding:
    prefix: -mass_type
  type: string
- doc: The directory in which mascot is located
  id: mascot_directory
  inputBinding:
    prefix: -mascot_directory
  type: string
- doc: A directory in which some temporary files can be stored
  id: temp_data_directory
  inputBinding:
    prefix: -temp_data_directory
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
