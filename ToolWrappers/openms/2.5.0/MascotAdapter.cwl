class: CommandLineTool
id: MascotAdapter.cwl
inputs:
- id: in_in
  doc: "*                      Input file in mzData format.\nNote: In mode 'mascot_out'\
    \ a Mascot results file (.mascotXML) is read"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                     Output file in idXML format.\nNote: In mode 'mascot_in'\
    \ Mascot generic format is written."
  type: File
  inputBinding:
    prefix: -out
- id: in_mascot_in
  doc: If this flag is set the MascotAdapter will read in mzData and write Mascot
    generic format
  type: boolean
  inputBinding:
    prefix: -mascot_in
- id: in_mascot_out
  doc: If this flag is set the MascotAdapter will read in a Mascot results file (.mascotXML)
    and write idXML
  type: boolean
  inputBinding:
    prefix: -mascot_out
- id: in_instrument
  doc: "The instrument that was used to measure the spectra (default: 'Default')"
  type: string
  inputBinding:
    prefix: -instrument
- id: in_precursor_mass_tolerance
  doc: "The precursor mass tolerance (default: '2.0')"
  type: double
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: in_peak_mass_tolerance
  doc: "The peak mass tolerance (default: '1.0')"
  type: double
  inputBinding:
    prefix: -peak_mass_tolerance
- id: in_taxonomy
  doc: "The taxonomy (default: 'All entries' valid: 'All entries', '. . Archaea (Archaeobacteria)',\
    \ '. . Eukaryota (eucaryotes)', '. . . . Alveolata (alveolates)', '. . . . . .\
    \ Plasmodium falciparum (malaria parasite)', '. . . . . . Other Alveolata', '.\
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
    \ (African clawed frog)', '. . . . . . . . . . . . Other lobe-finned fish and\
    \ tetrapod clade', '. . . . . . . . . . Actinopterygii (ray-finned fishes)', '.\
    \ . . . . . . . . . . . Takifugu rubripes (Japanese Pufferfish)', '. . . . . .\
    \ . . . . . . Danio rerio (zebra fish)', '. . . . . . . . . . . . Other Actinopterygii',\
    \ '. . . . . . . . Other Chordata', '. . . . . . Other Metazoa', '. . . . Dictyostelium\
    \ discoideum', '. . . . Fungi', '. . . . . . Saccharomyces Cerevisiae (baker\\\
    's yeast)', '. . . . . . Schizosaccharomyces pombe (fission yeast)', '. . . .\
    \ . . Pneumocystis carinii', '. . . . . . Other Fungi', '. . . . Viridiplantae\
    \ (Green Plants)', '. . . . . . Arabidopsis thaliana (thale cress)', '. . . .\
    \ . . Oryza sativa (rice)', '. . . . . . Other green plants', '. . . . Other Eukaryota',\
    \ '. . Bacteria (Eubacteria)', '. . . . Actinobacteria (class)', '. . . . . .\
    \ Mycobacterium tuberculosis complex', '. . . . . . Other Actinobacteria (class)',\
    \ '. . . . Firmicutes (gram-positive bacteria)', '. . . . . . Bacillus subtilis',\
    \ '. . . . . . Mycoplasma', '. . . . . . Streptococcus Pneumoniae', '. . . . .\
    \ . Streptomyces coelicolor', '. . . . . . Other Firmicutes', '. . . . Proteobacteria\
    \ (purple bacteria)', '. . . . . . Agrobacterium tumefaciens', '. . . . . . Campylobacter\
    \ jejuni', '. . . . . . Escherichia coli', '. . . . . . Neisseria meningitidis',\
    \ '. . . . . . Salmonella', '. . . . . . Other Proteobacteria', '. . . . Other\
    \ Bacteria', '. . Viruses', '. . . . Hepatitis C virus', '. . . . Other viruses',\
    \ '. . Other (includes plasmids and artificial sequences)', '. . unclassified',\
    \ '. . Species information unavailable')"
  type: string
  inputBinding:
    prefix: -taxonomy
- id: in_modifications
  doc: The modifications i.e. Carboxymethyl (C)
  type: string
  inputBinding:
    prefix: -modifications
- id: in_variable_modifications
  doc: The variable modifications i.e. Carboxymethyl (C)
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: in_db
  doc: "The database to search in (default: 'MSDB')"
  type: string
  inputBinding:
    prefix: -db
- id: in_hits
  doc: "The number of hits to report (default: 'AUTO')"
  type: long
  inputBinding:
    prefix: -hits
- id: in_cleavage
  doc: "The enzyme descriptor to the enzyme used for digestion. (Trypsin is default,\
    \ None would be best for peptide input or unspecific digestion, for more please\
    \ refer to your mascot server). (default: 'Trypsin' valid: 'Trypsin', 'Arg-C',\
    \ 'Asp-N', 'Asp-N_ambic', 'Chymotrypsin', 'CNBr', 'CNBr+Trypsin', 'Formic_acid',\
    \ 'Lys-C', 'Lys-C/P', 'PepsinA', 'Tryp-CNBr', 'TrypChymo', 'Trypsin/P', 'V8-DE',\
    \ 'V8-E', 'semiTrypsin', 'LysC+AspN', 'None')"
  type: long
  inputBinding:
    prefix: -cleavage
- id: in_missed_cleavages
  doc: "Number of allowed missed cleavages (default: '0' min: '0')"
  type: long
  inputBinding:
    prefix: -missed_cleavages
- id: in_sig_threshold
  doc: "Significance threshold (default: '0.05')"
  type: long
  inputBinding:
    prefix: -sig_threshold
- id: in_pep_homol
  doc: "Peptide homology threshold (default: '1.0')"
  type: long
  inputBinding:
    prefix: -pep_homol
- id: in_pep_ident
  doc: "Peptide ident threshold (default: '1.0')"
  type: long
  inputBinding:
    prefix: -pep_ident
- id: in_pep_rank
  doc: "Peptide rank (default: '1')"
  type: long
  inputBinding:
    prefix: -pep_rank
- id: in_prot_score
  doc: "Protein score (default: '1.0')"
  type: long
  inputBinding:
    prefix: -prot_score
- id: in_pep_score
  doc: "Peptide score (default: '1.0')"
  type: long
  inputBinding:
    prefix: -pep_score
- id: in_pep_exp_z
  doc: "Peptide expected charge (default: '1')"
  type: long
  inputBinding:
    prefix: -pep_exp_z
- id: in_show_unassigned
  doc: "Show_unassigned (default: '1')"
  type: long
  inputBinding:
    prefix: -show_unassigned
- id: in_first_dim_rt
  doc: "Additional information which is added to every peptide identification as metavalue\
    \ if set > 0 (default: '0.0')"
  type: long
  inputBinding:
    prefix: -first_dim_rt
- id: in_boundary
  doc: MIME boundary for mascot output format
  type: string
  inputBinding:
    prefix: -boundary
- id: in_mass_type
  doc: "Mass type (default: 'Monoisotopic' valid: 'Monoisotopic', 'Average')"
  type: string
  inputBinding:
    prefix: -mass_type
- id: in_mascot_directory
  doc: The directory in which mascot is located
  type: Directory
  inputBinding:
    prefix: -mascot_directory
- id: in_temp_data_directory
  doc: A directory in which some temporary files can be stored
  type: Directory
  inputBinding:
    prefix: -temp_data_directory
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                     Output file in idXML format.\nNote: In mode 'mascot_in'\
    \ Mascot generic format is written."
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- MascotAdapter
