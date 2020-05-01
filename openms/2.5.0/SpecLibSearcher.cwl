#!/usr/bin/env cwl-runner

baseCommand:
- SpecLibSearcher
class: CommandLineTool
cwlVersion: v1.0
id: speclibsearcher
inputs:
- doc: "*                                      Input files (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                      Searchable spectral library (MSP format)\
    \ (valid formats: 'msp')"
  id: lib
  inputBinding:
    prefix: -lib
  type: File
- doc: "*                                     Output files. Have to be as many as\
    \ input files (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: ":mass_tolerance <tolerance>             Width of precursor mass tolerance\
    \ window (default: '10.0')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance_unit <unit>             Unit of precursor mass tolerance.\
    \ (default: 'ppm' valid: 'ppm', 'Da')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":isotopes <num>                         Corrects for mono-isotopic peak misassignments.\
    \ (E.g.: 1 = prec. may be misassigned to first isotopic peak) (default: '[0 1]')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance <tolerance>              Fragment mass tolerance (default:\
    \ '10.0')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: "Function for similarity comparison (default: 'ZhangSimilarityScore' valid:\
    \ 'PeakAlignment', 'SpectrumAlignmentScore', 'SpectrumCheapDPCorr', 'SpectrumPrecurso\
    \ rComparator', 'SteinScottImproveScore', 'ZhangSimilarityScore')"
  id: compare_function
  inputBinding:
    prefix: -compare_function
  type: string
- doc: ":remove_peaks_below_threshold <threshold>  All peaks of a query spectrum with\
    \ intensities below <threshold> will be zeroed. (default: '2.01')"
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: ":min_peaks <number>                        Required minimum number of peaks\
    \ for a query spectrum (default: '5')"
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: ":max_peaks <number>                        Use only the top <number> of peaks.\
    \ (default: '150')"
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: ":cut_peaks_below <number>                  Remove all peaks which are lower\
    \ than 1/<number> of the highest peaks. Default equals all peaks which are lower\
    \ than 0.001 of the maximum intensity peak (defa ult: '1000')"
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: ":fixed <mods>                       Fixed modifications, specified using UniMod\
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
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable <mods>                    Variable modifications, specified using\
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
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable_max_per_peptide <num>     Maximum number of residues carrying a\
    \ variable modification per candidate peptide (default: '2')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
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
