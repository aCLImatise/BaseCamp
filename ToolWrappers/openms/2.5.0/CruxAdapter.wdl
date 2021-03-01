version 1.0

task CruxAdapter {
  input {
    File? in
    File? out
    File? database
    String? crux_executable
    String? extra_index_args
    String? extra_search_args
    String? extra_percolator_args
    Float? precursor_mass_tolerance
    String? precursor_mass_units
    Float? fragment_bin_offset
    Int? fragment_bin_width
    String? isotope_error
    String? run_percolator
    String? enzyme
    String? digestion
    Int? allowed_missed_cleavages
    String? decoy_format
    String? keep_terminal_aminos
    Float? c_term_modifications
    Float? n_term_modifications
    Float? modifications
    Float? test_fdr
    Float? train_fdr
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    CruxAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(crux_executable) then ("-crux_executable " +  '"' + crux_executable + '"') else ""} \
      ~{if defined(extra_index_args) then ("-extra_index_args " +  '"' + extra_index_args + '"') else ""} \
      ~{if defined(extra_search_args) then ("-extra_search_args " +  '"' + extra_search_args + '"') else ""} \
      ~{if defined(extra_percolator_args) then ("-extra_percolator_args " +  '"' + extra_percolator_args + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(precursor_mass_units) then ("-precursor_mass_units " +  '"' + precursor_mass_units + '"') else ""} \
      ~{if defined(fragment_bin_offset) then ("-fragment_bin_offset " +  '"' + fragment_bin_offset + '"') else ""} \
      ~{if defined(fragment_bin_width) then ("-fragment_bin_width " +  '"' + fragment_bin_width + '"') else ""} \
      ~{if defined(isotope_error) then ("-isotope_error " +  '"' + isotope_error + '"') else ""} \
      ~{if defined(run_percolator) then ("-run_percolator " +  '"' + run_percolator + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(digestion) then ("-digestion " +  '"' + digestion + '"') else ""} \
      ~{if defined(allowed_missed_cleavages) then ("-allowed_missed_cleavages " +  '"' + allowed_missed_cleavages + '"') else ""} \
      ~{if defined(decoy_format) then ("-decoy-format " +  '"' + decoy_format + '"') else ""} \
      ~{if defined(keep_terminal_aminos) then ("-keep-terminal-aminos " +  '"' + keep_terminal_aminos + '"') else ""} \
      ~{if defined(c_term_modifications) then ("-cterm_modifications " +  '"' + c_term_modifications + '"') else ""} \
      ~{if defined(n_term_modifications) then ("-nterm_modifications " +  '"' + n_term_modifications + '"') else ""} \
      ~{if defined(modifications) then ("-modifications " +  '"' + modifications + '"') else ""} \
      ~{if defined(test_fdr) then ("-test_fdr " +  '"' + test_fdr + '"') else ""} \
      ~{if defined(train_fdr) then ("-train_fdr " +  '"' + train_fdr + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                            Input file (valid formats: 'mzML')"
    out: "*                           Output file (valid formats: 'idXML')"
    database: "*                      FASTA file (valid formats: 'FASTA')"
    crux_executable: "*         Crux executable of the installation e.g. 'crux.exe'"
    extra_index_args: "Extra arguments to be passed to tide-index"
    extra_search_args: "Extra arguments to be passed to tide-search"
    extra_percolator_args: "Extra arguments to be passed to percolator"
    precursor_mass_tolerance: "Precursor monoisotopic mass tolerance (Crux parameter: peptide_mass_tolerance) (default: '10.0')"
    precursor_mass_units: "Unit of precursor mass tolerance (amu, m/z or ppm) (default: 'ppm' valid: 'mass', 'mz', 'ppm')"
    fragment_bin_offset: "In the discretization of the m/z axes of the observed and theoretical spectra, this parameter specifies the location of the left edge of the first bin, relative to mass = 0 (i.e., mz-bin-offset = 0.xx means the left edge of the first bin will be located at +0.xx Da). (default: '0.0')"
    fragment_bin_width: "Before calculation of the XCorr score, the m/z axes of the observed and theoretical spectra are discretized. This parameter specifies the size of each bin. The exact formula for computing the discretized m/z value is floor((x/mz-bin-width) + 1.0 - mz-bin-offset), where x is the observed m/z value. For low resolution ion trap ms/ms data 1.0005079 and for high resolution ms/ms 0.02 is recommended. (default: '0.02')"
    isotope_error: "List of positive, non-zero integers."
    run_percolator: "Whether to run percolator after tide-search (default: 'true' valid: 'true', 'false')"
    enzyme: "The enzyme used for peptide digestion. (default: 'trypsin' valid: 'custom-enzyme', 'trypsin/p', 'cyanogen-bromide', 'clostripain', 'elastase-trypsin-chymotrypsin', 'no-enzyme', 'lys-c', 'chymotrypsin', 'staph-protease', 'proline-endopeptidase', 'glu-c', 'pepsin-a', 'asp-n', 'elastase', 'trypsin', 'iodosobenzoate', 'arg-c', 'lys-n')"
    digestion: "Full, partial or non specific digestion (default: 'full-digest' valid: 'full-digest', 'partial-digest', 'non-specific-digest')"
    allowed_missed_cleavages: "Number of possible cleavage sites missed by the enzyme, maximum value is 5; for enzyme search (default: '0')"
    decoy_format: "Decoy generation method either by reversing the sequence or shuffling it. (default: 'shuffle' valid: 'none', 'shuffle', 'peptide-reverse', 'protein-reverse')"
    keep_terminal_aminos: "Whether to keep N and C terminal in place or also shuffled / reversed. (default: 'NC' valid: 'N', 'C', 'NC', 'none')"
    c_term_modifications: "Specifies C-terminal static and variable mass modifications on peptides.  Specify a comma-separated list of C-terminal modification sequences of the form: X+21.9819 Default = <empty>."
    n_term_modifications: "Specifies N-terminal static and variable mass modifications on peptides.  Specify a comma-separated list of N-terminal modification sequences of the form: 1E-18.0106,C-17.0265 Default = <empty>."
    modifications: "Expression for static and variable mass modifications to include. Specify a comma-separated list of modification sequences of the form: C+57.02146,2M+15.9949,1STY+79.966331,... Default = C+57.02146."
    test_fdr: "False discovery rate threshold used in selecting hyperparameters during internal cross-validation and for reporting the final results. (default: '0.01')"
    train_fdr: "False discovery rate threshold to define positive examples in training. (default: '0.01')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}