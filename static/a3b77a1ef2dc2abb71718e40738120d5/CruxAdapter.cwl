class: CommandLineTool
id: CruxAdapter.cwl
inputs:
- id: in_in
  doc: "*                            Input file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_database
  doc: "*                      FASTA file (valid formats: 'FASTA')"
  type: File?
  inputBinding:
    prefix: -database
- id: in_crux_executable
  doc: "*         Crux executable of the installation e.g. 'crux.exe'"
  type: string?
  inputBinding:
    prefix: -crux_executable
- id: in_extra_index_args
  doc: Extra arguments to be passed to tide-index
  type: string?
  inputBinding:
    prefix: -extra_index_args
- id: in_extra_search_args
  doc: Extra arguments to be passed to tide-search
  type: string?
  inputBinding:
    prefix: -extra_search_args
- id: in_extra_percolator_args
  doc: Extra arguments to be passed to percolator
  type: string?
  inputBinding:
    prefix: -extra_percolator_args
- id: in_precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance (Crux parameter: peptide_mass_tolerance)\
    \ (default: '10.0')"
  type: double?
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: in_precursor_mass_units
  doc: "Unit of precursor mass tolerance (amu, m/z or ppm) (default: 'ppm' valid:\
    \ 'mass', 'mz', 'ppm')"
  type: string?
  inputBinding:
    prefix: -precursor_mass_units
- id: in_fragment_bin_offset
  doc: "In the discretization of the m/z axes of the observed and theoretical spectra,\
    \ this parameter specifies the location of the left edge of the first bin, relative\
    \ to mass = 0 (i.e., mz-bin-offset = 0.xx means the left edge of the first bin\
    \ will be located at +0.xx Da). (default: '0.0')"
  type: double?
  inputBinding:
    prefix: -fragment_bin_offset
- id: in_fragment_bin_width
  doc: "Before calculation of the XCorr score, the m/z axes of the observed and theoretical\
    \ spectra are discretized. This parameter specifies the size of each bin. The\
    \ exact formula for computing the discretized m/z value is floor((x/mz-bin-width)\
    \ + 1.0 - mz-bin-offset), where x is the observed m/z value. For low resolution\
    \ ion trap ms/ms data 1.0005079 and for high resolution ms/ms 0.02 is recommended.\
    \ (default: '0.02')"
  type: long?
  inputBinding:
    prefix: -fragment_bin_width
- id: in_isotope_error
  doc: List of positive, non-zero integers.
  type: string?
  inputBinding:
    prefix: -isotope_error
- id: in_run_percolator
  doc: "Whether to run percolator after tide-search (default: 'true' valid: 'true',\
    \ 'false')"
  type: string?
  inputBinding:
    prefix: -run_percolator
- id: in_enzyme
  doc: "The enzyme used for peptide digestion. (default: 'trypsin' valid: 'custom-enzyme',\
    \ 'trypsin/p', 'cyanogen-bromide', 'clostripain', 'elastase-trypsin-chymotrypsin',\
    \ 'no-enzyme', 'lys-c', 'chymotrypsin', 'staph-protease', 'proline-endopeptidase',\
    \ 'glu-c', 'pepsin-a', 'asp-n', 'elastase', 'trypsin', 'iodosobenzoate', 'arg-c',\
    \ 'lys-n')"
  type: string?
  inputBinding:
    prefix: -enzyme
- id: in_digestion
  doc: "Full, partial or non specific digestion (default: 'full-digest' valid: 'full-digest',\
    \ 'partial-digest', 'non-specific-digest')"
  type: string?
  inputBinding:
    prefix: -digestion
- id: in_allowed_missed_cleavages
  doc: "Number of possible cleavage sites missed by the enzyme, maximum value is 5;\
    \ for enzyme search (default: '0')"
  type: long?
  inputBinding:
    prefix: -allowed_missed_cleavages
- id: in_decoy_format
  doc: "Decoy generation method either by reversing the sequence or shuffling it.\
    \ (default: 'shuffle' valid: 'none', 'shuffle', 'peptide-reverse', 'protein-reverse')"
  type: string?
  inputBinding:
    prefix: -decoy-format
- id: in_keep_terminal_aminos
  doc: "Whether to keep N and C terminal in place or also shuffled / reversed. (default:\
    \ 'NC' valid: 'N', 'C', 'NC', 'none')"
  type: string?
  inputBinding:
    prefix: -keep-terminal-aminos
- id: in_c_term_modifications
  doc: 'Specifies C-terminal static and variable mass modifications on peptides.  Specify
    a comma-separated list of C-terminal modification sequences of the form: X+21.9819
    Default = <empty>.'
  type: double?
  inputBinding:
    prefix: -cterm_modifications
- id: in_n_term_modifications
  doc: 'Specifies N-terminal static and variable mass modifications on peptides.  Specify
    a comma-separated list of N-terminal modification sequences of the form: 1E-18.0106,C-17.0265
    Default = <empty>.'
  type: double?
  inputBinding:
    prefix: -nterm_modifications
- id: in_modifications
  doc: 'Expression for static and variable mass modifications to include. Specify
    a comma-separated list of modification sequences of the form: C+57.02146,2M+15.9949,1STY+79.966331,...
    Default = C+57.02146.'
  type: double?
  inputBinding:
    prefix: -modifications
- id: in_test_fdr
  doc: "False discovery rate threshold used in selecting hyperparameters during internal\
    \ cross-validation and for reporting the final results. (default: '0.01')"
  type: double?
  inputBinding:
    prefix: -test_fdr
- id: in_train_fdr
  doc: "False discovery rate threshold to define positive examples in training. (default:\
    \ '0.01')"
  type: double?
  inputBinding:
    prefix: -train_fdr
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- CruxAdapter
