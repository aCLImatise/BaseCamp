class: CommandLineTool
id: CruxAdapter.cwl
inputs:
- id: in
  doc: "*                            Input file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: database
  doc: "*                      FASTA file (valid formats: 'FASTA')"
  type: File
  inputBinding:
    prefix: -database
- id: crux_executable
  doc: "*         Crux executable of the installation e.g. 'crux.exe'"
  type: string
  inputBinding:
    prefix: -crux_executable
- id: extra_index_args
  doc: Extra arguments to be passed to tide-index
  type: string
  inputBinding:
    prefix: -extra_index_args
- id: extra_search_args
  doc: Extra arguments to be passed to tide-search
  type: string
  inputBinding:
    prefix: -extra_search_args
- id: extra_percolator_args
  doc: Extra arguments to be passed to percolator
  type: string
  inputBinding:
    prefix: -extra_percolator_args
- id: precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance (Crux parameter: peptide_mass_tolerance)\
    \ (default: '10.0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: precursor_mass_units
  doc: "Unit of precursor mass tolerance (amu, m/z or ppm) (default: 'ppm' valid:\
    \ 'mass', 'mz', 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_mass_units
- id: fragment_bin_offset
  doc: "In the discretization of the m/z axes of the observed and theoretical spectra,\
    \ this parameter specifies the location of the left edge of the first bin, relative\
    \ to mass  = 0 (i.e., mz-bin-offset = 0.xx means the left edge of the first bin\
    \ will be located at +0.xx Da). (default: '0.0')"
  type: string
  inputBinding:
    prefix: -fragment_bin_offset
- id: fragment_bin_width
  doc: "Before calculation of the XCorr score, the m/z axes of the observed and theoretical\
    \ spectra are discretized. This parameter specifies the size of each bin. The\
    \ exact  formula for computing the discretized m/z value is floor((x/mz-bin-width)\
    \ + 1.0 - mz-bin-offset), where x is the observed m/z value. For low resolution\
    \ ion trap ms/ms data 1.0005079 and for high resolution ms/ms 0.02 is recommended.\
    \ (default: '0.02')"
  type: string
  inputBinding:
    prefix: -fragment_bin_width
- id: isotope_error
  doc: List of positive, non-zero integers.
  type: string
  inputBinding:
    prefix: -isotope_error
- id: run_percolator
  doc: "<true/false>           Whether to run percolator after tide-search (default:\
    \ 'true' valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -run_percolator
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'trypsin' valid: 'custom-enzyme',\
    \ 'arg-c', 'chymotrypsin', 'asp-n', 'cyanogen-bromide', 'clostripain', 'elastase-trypsin\
    \ -chymotrypsin', 'no-enzyme', 'lys-c', 'lys-n', 'trypsin/p', 'elastase', 'iodosobenzoate',\
    \ 'staph-protease', 'proline-endopeptidase', 'glu-c', 'pepsin-a', 'trypsin')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: digestion
  doc: "Full, partial or non specific digestion (default: 'full-digest' valid: 'full-digest',\
    \ 'partial-digest', 'non-specific-digest')"
  type: string
  inputBinding:
    prefix: -digestion
- id: allowed_missed_cleavages
  doc: "Number of possible cleavage sites missed by the enzyme, maximum value is 5;\
    \ for enzyme search (default: '0')"
  type: string
  inputBinding:
    prefix: -allowed_missed_cleavages
- id: decoy_format
  doc: "Decoy generation method either by reversing the sequence or shuffling it.\
    \ (default: 'shuffle' valid: 'none', 'shuffle', 'peptide-reverse', 'protein-reverse')"
  type: string
  inputBinding:
    prefix: -decoy-format
- id: keep_terminal_aminos
  doc: "Whether to keep N and C terminal in place or also shuffled / reversed. (default:\
    \ 'NC' valid: 'N', 'C', 'NC', 'none')"
  type: string
  inputBinding:
    prefix: -keep-terminal-aminos
- id: c_term_modifications
  doc: 'Specifies C-terminal static and variable mass modifications on peptides.  Specify
    a comma-separated list of C-terminal modification sequences of the form: X+21.9819
    Defa ult = <empty>.'
  type: string
  inputBinding:
    prefix: -cterm_modifications
- id: n_term_modifications
  doc: 'Specifies N-terminal static and variable mass modifications on peptides.  Specify
    a comma-separated list of N-terminal modification sequences of the form: 1E-18.0106,C-1
    7.0265 Default = <empty>.'
  type: string
  inputBinding:
    prefix: -nterm_modifications
- id: modifications
  doc: 'Expression for static and variable mass modifications to include. Specify
    a comma-separated list of modification sequences of the form: C+57.02146,2M+15.9949,1STY+79.966
    331,... Default = C+57.02146.'
  type: string
  inputBinding:
    prefix: -modifications
- id: test_fdr
  doc: "False discovery rate threshold used in selecting hyperparameters during internal\
    \ cross-validation and for reporting the final results. (default: '0.01')"
  type: string
  inputBinding:
    prefix: -test_fdr
- id: train_fdr
  doc: "False discovery rate threshold to define positive examples in training. (default:\
    \ '0.01')"
  type: string
  inputBinding:
    prefix: -train_fdr
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
- CruxAdapter
