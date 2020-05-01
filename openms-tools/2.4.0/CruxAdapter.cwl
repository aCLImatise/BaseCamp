#!/usr/bin/env cwl-runner

baseCommand:
- CruxAdapter
class: CommandLineTool
cwlVersion: v1.0
id: cruxadapter
inputs:
- doc: "*                            Input file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                           Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "*                      FASTA file (valid formats: 'FASTA')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "*         Crux executable of the installation e.g. 'crux.exe'"
  id: crux_executable
  inputBinding:
    prefix: -crux_executable
  type: string
- doc: Extra arguments to be passed to tide-index
  id: extra_index_args
  inputBinding:
    prefix: -extra_index_args
  type: string
- doc: Extra arguments to be passed to tide-search
  id: extra_search_args
  inputBinding:
    prefix: -extra_search_args
  type: string
- doc: Extra arguments to be passed to percolator
  id: extra_percolator_args
  inputBinding:
    prefix: -extra_percolator_args
  type: string
- doc: "Precursor monoisotopic mass tolerance (Crux parameter: peptide_mass_tolerance)\
    \ (default: '10')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "Unit of precursor mass tolerance (amu, m/z or ppm) (default: 'ppm' valid:\
    \ 'mass', 'mz', 'ppm')"
  id: precursor_mass_units
  inputBinding:
    prefix: -precursor_mass_units
  type: string
- doc: "In the discretization of the m/z axes of the observed and theoretical spectra,\
    \ this parameter specifies the location of the left edge of the first bin, relative\
    \ to mass  = 0 (i.e., mz-bin-offset = 0.xx means the left edge of the first bin\
    \ will be located at +0.xx Da). (default: '0')"
  id: fragment_bin_offset
  inputBinding:
    prefix: -fragment_bin_offset
  type: string
- doc: "Before calculation of the XCorr score, the m/z axes of the observed and theoretical\
    \ spectra are discretized. This parameter specifies the size of each bin. The\
    \ exact  formula for computing the discretized m/z value is floor((x/mz-bin-width)\
    \ + 1.0 - mz-bin-offset), where x is the observed m/z value. For low resolution\
    \ ion trap ms/ms data 1.0005079 and for high resolution ms/ms 0.02 is recommended.\
    \ (default: '0.02')"
  id: fragment_bin_width
  inputBinding:
    prefix: -fragment_bin_width
  type: string
- doc: List of positive, non-zero integers.
  id: isotope_error
  inputBinding:
    prefix: -isotope_error
  type: string
- doc: "<true/false>           Whether to run percolator after tide-search (default:\
    \ 'true' valid: 'true', 'false')"
  id: run_percolator
  inputBinding:
    prefix: -run_percolator
  type: boolean
- doc: "The enzyme used for peptide digestion. (default: 'trypsin' valid: 'custom-enzyme',\
    \ 'asp-n', 'clostripain', 'elastase-trypsin-chymotrypsin', 'lys-n', 'trypsin/p',\
    \ 'lys-c' , 'arg-c', 'staph-protease', 'trypsin', 'elastase', 'pepsin-a', 'cyanogen-bromide',\
    \ 'no-enzyme', 'iodosobenzoate', 'chymotrypsin', 'glu-c', 'proline-endopeptidase')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "Full, partial or non specific digestion (default: 'full-digest' valid: 'full-digest',\
    \ 'partial-digest', 'non-specific-digest')"
  id: digestion
  inputBinding:
    prefix: -digestion
  type: string
- doc: "Number of possible cleavage sites missed by the enzyme, maximum value is 5;\
    \ for enzyme search (default: '0')"
  id: allowed_missed_cleavages
  inputBinding:
    prefix: -allowed_missed_cleavages
  type: string
- doc: "Decoy generation method either by reversing the sequence or shuffling it.\
    \ (default: 'shuffle' valid: 'none', 'shuffle', 'peptide-reverse', 'protein-reverse')"
  id: decoy_format
  inputBinding:
    prefix: -decoy-format
  type: string
- doc: "Whether to keep N and C terminal in place or also shuffled / reversed. (default:\
    \ 'NC' valid: 'N', 'C', 'NC', 'none')"
  id: keep_terminal_aminos
  inputBinding:
    prefix: -keep-terminal-aminos
  type: string
- doc: 'Specifies C-terminal static and variable mass modifications on peptides.  Specify
    a comma-separated list of C-terminal modification sequences of the form: X+21.9819
    Defa ult = <empty>.'
  id: c_term_modifications
  inputBinding:
    prefix: -cterm_modifications
  type: string
- doc: 'Specifies N-terminal static and variable mass modifications on peptides.  Specify
    a comma-separated list of N-terminal modification sequences of the form: 1E-18.0106,C-1
    7.0265 Default = <empty>.'
  id: n_term_modifications
  inputBinding:
    prefix: -nterm_modifications
  type: string
- doc: 'Expression for static and variable mass modifications to include. Specify
    a comma-separated list of modification sequences of the form: C+57.02146,2M+15.9949,1STY+79.966
    331,... Default = C+57.02146.'
  id: modifications
  inputBinding:
    prefix: -modifications
  type: string
- doc: "False discovery rate threshold used in selecting hyperparameters during internal\
    \ cross-validation and for reporting the final results. (default: '0.01')"
  id: test_fdr
  inputBinding:
    prefix: -test_fdr
  type: string
- doc: "False discovery rate threshold to define positive examples in training. (default:\
    \ '0.01')"
  id: train_fdr
  inputBinding:
    prefix: -train_fdr
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
