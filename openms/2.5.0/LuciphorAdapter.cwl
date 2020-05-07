class: CommandLineTool
id: LuciphorAdapter.cwl
inputs:
- id: in
  doc: "*                        Input spectrum file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: id
  doc: "*                        Protein/peptide identifications file (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: out
  doc: "*                       Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: executable
  doc: '*                LuciPHOr2 .jar file. Provide a full or relative path, or
    make sure it can be found in your PATH environment.'
  type: File
  inputBinding:
    prefix: -executable
- id: fragment_method
  doc: "Fragmentation method (default: 'CID' valid: 'CID', 'HCD')"
  type: string
  inputBinding:
    prefix: -fragment_method
- id: fragment_mass_tolerance
  doc: "Tolerance of the peaks in the fragment spectrum (default: '0.5')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: fragment_error_units
  doc: "Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -fragment_error_units
- id: min_mz
  doc: "Do not consider peaks below this value for matching fragment ions (default:\
    \ '150.0')"
  type: string
  inputBinding:
    prefix: -min_mz
- id: target_modifications
  doc: "List the amino acids to be searched for and their mass modifications, specified\
    \ using UniMod (www.unimod.org) terms, e.g. 'Carbamidomethyl (C)' (default: '[Phospho\
    \ (S) Phosp ho (T) Phospho (Y)]' valid: '15N-oxobutanoic (N-term C)', '15N-oxobutanoic\
    \ (Protein N-term S)', '15N-oxobutanoic (Protein N-term T)', '2-dimethylsuccinyl\
    \ (C)', '2-monomethyl succinyl (C)', '2-nitrobenzyl (Y)', '2-succinyl (C)', '2HPG\
    \ (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl (K)', '3sulfo (N-term)', '4-ONE\
    \ (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1) (C)', '4-ONE+Delta:H(-2)O(-1)\
    \ (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal (C)', 'a-type-ion (C-term)',\
    \ 'AccQTag (K)', 'AccQTag (N-term)', 'Acety l (C)', 'Acetyl (H)', 'Acetyl (K)',\
    \ 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein N-te rm)', 'Acetyl:2H(3)\
    \ (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3) (Protein N-term)',\
    \ 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetylde oxyhypusine\
    \ (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein N-term)', 'AEBS\
    \ (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4)\
    \ (T)', 'AHA- ... , 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -target_modifications
- id: neutral_losses
  doc: "List the types of neutral losses that you want to consider. The residue field\
    \ is case sensitive. For example: lower case 'sty' implies that the neutral loss\
    \ can only occur  if the specified modification is present. Syntax: NL = <RESDIUES>\
    \ -<NEUTRAL_LOSS_MOLECULAR_FORMULA> <MASS_LOST> (default: '[sty -H3PO4 -97.97690]')"
  type: string
  inputBinding:
    prefix: -neutral_losses
- id: decoy_mass
  doc: "How much to add to an amino acid to make it a decoy (default: '79.966330999999997'\
    \ min: '1.0')"
  type: string
  inputBinding:
    prefix: -decoy_mass
- id: decoy_neutral_losses
  doc: "For handling the neutral loss from a decoy sequence. The syntax for this is\
    \ identical to that of the normal neutral losses given above except that the residue\
    \ is always 'X'. Syntax: DECOY_NL = X -<NEUTRAL_LOSS_MOLECULAR_FORMULA> <MASS_LOST>\
    \ (default: '[X -H3PO4 -97.97690]')"
  type: string
  inputBinding:
    prefix: -decoy_neutral_losses
- id: max_charge_state
  doc: "Do not consider PSMs with a charge state above this value (default: '5' min:\
    \ '1')"
  type: string
  inputBinding:
    prefix: -max_charge_state
- id: max_peptide_length
  doc: "Restrict scoring to peptides with a length shorter than this value (default:\
    \ '40' min: '1')"
  type: string
  inputBinding:
    prefix: -max_peptide_length
- id: max_num_perm
  doc: "Maximum number of permutations a sequence can have (default: '16384' min:\
    \ '1')"
  type: string
  inputBinding:
    prefix: -max_num_perm
- id: modeling_score_threshold
  doc: "Minimum score a PSM needs to be considered for modeling (default: '0.95' min:\
    \ '0.0')"
  type: string
  inputBinding:
    prefix: -modeling_score_threshold
- id: scoring_threshold
  doc: "PSMs below this value will be discarded (default: '0.0' min: '0.0')"
  type: string
  inputBinding:
    prefix: -scoring_threshold
- id: min_num_psms_model
  doc: "The minimum number of PSMs you need for any charge state in order to build\
    \ a model for it (default: '50' min: '1')"
  type: string
  inputBinding:
    prefix: -min_num_psms_model
- id: num_threads
  doc: "For multi-threading, 0 = use all CPU found by JAVA (default: '6' min: '0')"
  type: string
  inputBinding:
    prefix: -num_threads
- id: run_mode
  doc: "Determines how Luciphor will run: 0 = calculate FLR then rerun scoring without\
    \ decoys (two iterations), 1 = Report Decoys: calculate FLR but don't rescore\
    \ PSMs, all decoy  hits will be reported (default: '0' valid: '0', '1')"
  type: string
  inputBinding:
    prefix: -run_mode
- id: rt_tolerance
  doc: "Set the retention time tolerance (for the mapping of identifications to spectra\
    \ in case multiple search engines were used) (default: '0.01' min: '0.0')"
  type: string
  inputBinding:
    prefix: -rt_tolerance
- id: java_executable
  doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  type: File
  inputBinding:
    prefix: -java_executable
- id: java_memory
  doc: "Maximum Java heap size (in MB) (default: '3500')"
  type: string
  inputBinding:
    prefix: -java_memory
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
- LuciphorAdapter
