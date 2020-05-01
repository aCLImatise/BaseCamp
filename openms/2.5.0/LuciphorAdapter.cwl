#!/usr/bin/env cwl-runner

baseCommand:
- LuciphorAdapter
class: CommandLineTool
cwlVersion: v1.0
id: luciphoradapter
inputs:
- doc: "*                        Input spectrum file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                        Protein/peptide identifications file (valid formats:\
    \ 'idXML')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: "*                       Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: '*                LuciPHOr2 .jar file. Provide a full or relative path, or
    make sure it can be found in your PATH environment.'
  id: executable
  inputBinding:
    prefix: -executable
  type: File
- doc: "Fragmentation method (default: 'CID' valid: 'CID', 'HCD')"
  id: fragment_method
  inputBinding:
    prefix: -fragment_method
  type: string
- doc: "Tolerance of the peaks in the fragment spectrum (default: '0.5')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: "Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')"
  id: fragment_error_units
  inputBinding:
    prefix: -fragment_error_units
  type: string
- doc: "Do not consider peaks below this value for matching fragment ions (default:\
    \ '150.0')"
  id: min_mz
  inputBinding:
    prefix: -min_mz
  type: string
- doc: "List the amino acids to be searched for and their mass modifications, specified\
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
  id: target_modifications
  inputBinding:
    prefix: -target_modifications
  type: string
- doc: "List the types of neutral losses that you want to consider. The residue field\
    \ is case sensitive. For example: lower case 'sty' implies that the neutral loss\
    \ can only occur  if the specified modification is present. Syntax: NL = <RESDIUES>\
    \ -<NEUTRAL_LOSS_MOLECULAR_FORMULA> <MASS_LOST> (default: '[sty -H3PO4 -97.97690]')"
  id: neutral_losses
  inputBinding:
    prefix: -neutral_losses
  type: string
- doc: "How much to add to an amino acid to make it a decoy (default: '79.966330999999997'\
    \ min: '1.0')"
  id: decoy_mass
  inputBinding:
    prefix: -decoy_mass
  type: string
- doc: "For handling the neutral loss from a decoy sequence. The syntax for this is\
    \ identical to that of the normal neutral losses given above except that the residue\
    \ is always 'X'. Syntax: DECOY_NL = X -<NEUTRAL_LOSS_MOLECULAR_FORMULA> <MASS_LOST>\
    \ (default: '[X -H3PO4 -97.97690]')"
  id: decoy_neutral_losses
  inputBinding:
    prefix: -decoy_neutral_losses
  type: string
- doc: "Do not consider PSMs with a charge state above this value (default: '5' min:\
    \ '1')"
  id: max_charge_state
  inputBinding:
    prefix: -max_charge_state
  type: string
- doc: "Restrict scoring to peptides with a length shorter than this value (default:\
    \ '40' min: '1')"
  id: max_peptide_length
  inputBinding:
    prefix: -max_peptide_length
  type: string
- doc: "Maximum number of permutations a sequence can have (default: '16384' min:\
    \ '1')"
  id: max_num_perm
  inputBinding:
    prefix: -max_num_perm
  type: string
- doc: "Minimum score a PSM needs to be considered for modeling (default: '0.95' min:\
    \ '0.0')"
  id: modeling_score_threshold
  inputBinding:
    prefix: -modeling_score_threshold
  type: string
- doc: "PSMs below this value will be discarded (default: '0.0' min: '0.0')"
  id: scoring_threshold
  inputBinding:
    prefix: -scoring_threshold
  type: string
- doc: "The minimum number of PSMs you need for any charge state in order to build\
    \ a model for it (default: '50' min: '1')"
  id: min_num_psms_model
  inputBinding:
    prefix: -min_num_psms_model
  type: string
- doc: "For multi-threading, 0 = use all CPU found by JAVA (default: '6' min: '0')"
  id: num_threads
  inputBinding:
    prefix: -num_threads
  type: string
- doc: "Determines how Luciphor will run: 0 = calculate FLR then rerun scoring without\
    \ decoys (two iterations), 1 = Report Decoys: calculate FLR but don't rescore\
    \ PSMs, all decoy  hits will be reported (default: '0' valid: '0', '1')"
  id: run_mode
  inputBinding:
    prefix: -run_mode
  type: string
- doc: "Set the retention time tolerance (for the mapping of identifications to spectra\
    \ in case multiple search engines were used) (default: '0.01' min: '0.0')"
  id: rt_tolerance
  inputBinding:
    prefix: -rt_tolerance
  type: string
- doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  id: java_executable
  inputBinding:
    prefix: -java_executable
  type: File
- doc: "Maximum Java heap size (in MB) (default: '3500')"
  id: java_memory
  inputBinding:
    prefix: -java_memory
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
