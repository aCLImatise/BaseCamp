class: CommandLineTool
id: SpecLibSearcher.cwl
inputs:
- id: in
  doc: "*                                      Input files (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: lib
  doc: "*                                      Searchable spectral library (MSP format)\
    \ (valid formats: 'msp')"
  type: File
  inputBinding:
    prefix: -lib
- id: out
  doc: "*                                     Output files. Have to be as many as\
    \ input files (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: precursor
  doc: ":mass_tolerance <tolerance>             Width of precursor mass tolerance\
    \ window (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":mass_tolerance_unit <unit>             Unit of precursor mass tolerance.\
    \ (default: 'ppm' valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":isotopes <num>                         Corrects for mono-isotopic peak misassignments.\
    \ (E.g.: 1 = prec. may be misassigned to first isotopic peak) (default: '[0 1]')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: fragment
  doc: ":mass_tolerance <tolerance>              Fragment mass tolerance (default:\
    \ '10.0')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: compare_function
  doc: "Function for similarity comparison (default: 'ZhangSimilarityScore' valid:\
    \ 'PeakAlignment', 'SpectrumAlignmentScore', 'SpectrumCheapDPCorr', 'SpectrumPrecurso\
    \ rComparator', 'SteinScottImproveScore', 'ZhangSimilarityScore')"
  type: string
  inputBinding:
    prefix: -compare_function
- id: filter
  doc: ":remove_peaks_below_threshold <threshold>  All peaks of a query spectrum with\
    \ intensities below <threshold> will be zeroed. (default: '2.01')"
  type: boolean
  inputBinding:
    prefix: -filter
- id: filter
  doc: ":min_peaks <number>                        Required minimum number of peaks\
    \ for a query spectrum (default: '5')"
  type: boolean
  inputBinding:
    prefix: -filter
- id: filter
  doc: ":max_peaks <number>                        Use only the top <number> of peaks.\
    \ (default: '150')"
  type: boolean
  inputBinding:
    prefix: -filter
- id: filter
  doc: ":cut_peaks_below <number>                  Remove all peaks which are lower\
    \ than 1/<number> of the highest peaks. Default equals all peaks which are lower\
    \ than 0.001 of the maximum intensity peak (defa ult: '1000')"
  type: boolean
  inputBinding:
    prefix: -filter
- id: modifications
  doc: ":fixed <mods>                       Fixed modifications, specified using UniMod\
    \ (www.unimod.org) terms, e.g. 'Carbamidomethyl (C)' (valid: '15N-oxobutanoic\
    \ (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(- 1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhy pusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribo syl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', ... S (Protein N-term)', 'Xlink:EGScleaved (K)', 'Xlink:EGScleaved (Protein\
    \ N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable <mods>                    Variable modifications, specified using\
    \ UniMod (www.unimod.org) terms, e.g. 'Oxidation (M)' (valid: '15N-oxobutanoic\
    \ (N-term C)', '15N-oxobutanoic (Protein  N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(- 1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhy pusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribo syl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', ... S (Protein N-term)', 'Xlink:EGScleaved (K)', 'Xlink:EGScleaved (Protein\
    \ N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable_max_per_peptide <num>     Maximum number of residues carrying a\
    \ variable modification per candidate peptide (default: '2')"
  type: boolean
  inputBinding:
    prefix: -modifications
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
- SpecLibSearcher
