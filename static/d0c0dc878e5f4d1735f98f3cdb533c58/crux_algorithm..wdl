version 1.0

task CruxAlgorithm {
  input {
    String bullseye
    String tide_index
    String tide_search
    String comet
    String percolator
    String q_ranker
    String algorithm_dot
    String search_for_x_links
    String spectral_counts
    String pipeline
    String cascade_search
    String assign_confidence
    String make_pin
    String predict_peptide_ions
    String hard_klor
    String param_medic
    String print_processed_spectra
    String generate_peptides
    Int get_ms_two_spectrum
    String version
    String psm_convert
    String subtract_index
    String xlink_assign_ions
    String xlink_score_spectrum
    String localize_modification
    String extract_columns
    String extract_rows
    String stat_column
    String sort_by_column
  }
  command <<<
    crux algorithm_ \
      ~{bullseye} \
      ~{tide_index} \
      ~{tide_search} \
      ~{comet} \
      ~{percolator} \
      ~{q_ranker} \
      ~{algorithm_dot} \
      ~{search_for_x_links} \
      ~{spectral_counts} \
      ~{pipeline} \
      ~{cascade_search} \
      ~{assign_confidence} \
      ~{make_pin} \
      ~{predict_peptide_ions} \
      ~{hard_klor} \
      ~{param_medic} \
      ~{print_processed_spectra} \
      ~{generate_peptides} \
      ~{get_ms_two_spectrum} \
      ~{version} \
      ~{psm_convert} \
      ~{subtract_index} \
      ~{xlink_assign_ions} \
      ~{xlink_score_spectrum} \
      ~{localize_modification} \
      ~{extract_columns} \
      ~{extract_rows} \
      ~{stat_column} \
      ~{sort_by_column}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bullseye: "Assign high resolution precursor m/z values to\\nMS/MS data using the Hardklör algorithm."
    tide_index: "Create an index for all peptides in a fasta file,\\nfor use in subsequent calls to tide-search."
    tide_search: "Search a collection of spectra against a sequence\\ndatabase, returning a collection of\\npeptide-spectrum matches (PSMs). This is a fast\\nsearch engine but requires that you first build an\\nindex with tide-index."
    comet: "Search a collection of spectra against a sequence\\ndatabase, returning a collection of PSMs. This\\nsearch engine runs directly on a protein database\\nin FASTA format."
    percolator: "Re-rank a collection of PSMs using the Percolator\\nalgorithm. Optionally, also produce protein\\nrankings using the Fido algorithm."
    q_ranker: "Re-rank a collection of PSMs using the Q-ranker"
    algorithm_dot: "barista                  Rank PSMs, peptides and proteins, assigning a"
    search_for_x_links: "Search a collection of spectra against a sequence\\ndatabase, returning a collection of matches\\ncorresponding to linear and cross-linked peptides\\nscored by XCorr."
    spectral_counts: "Quantify peptides or proteins using one of three\\nspectral counting methods."
    pipeline: "Runs a series of Crux tools on a protein database\\nand one or more sets of tandem mass spectra."
    cascade_search: "An iterative procedure for incorporating\\ninformation about peptide groups into the database\\nsearch and confidence estimation procedure."
    assign_confidence: "Assign two types of statistical confidence measures\\n(q-values and posterior error probabilities) to\\neach PSM in a given set."
    make_pin: "Given a set of search results files, generate a pin\\nfile for input to crux percolator"
    predict_peptide_ions: "Given a peptide and a charge state, predict the m/z\\nvalues of the resulting fragment ions."
    hard_klor: "Identify isotopic distributions from\\nhigh-resolution mass spectra."
    param_medic: "Examine the spectra in a file to estimate the best\\nprecursor and fragment error tolerances for\\ndatabase search."
    print_processed_spectra: "Process spectra as for scoring xcorr and print the\\nresults to a file."
    generate_peptides: "Extract from a given set of protein sequences a\\nlist of target and decoy peptides fitting the\\nspecified criteria."
    get_ms_two_spectrum: "Extract one or more fragmentation spectra,\\nspecified by scan number, from an MS2 file."
    version: "Print the Crux version number to standard output,\\nthen exit."
    psm_convert: "Reads in a file containing peptide-spectrum matches\\n(PSMs) in one of the variety of supported formats\\nand outputs the same PSMs in a different format"
    subtract_index: "This command takes two peptide indices, created by\\nthe tide-index command, and subtracts the second\\nindex from the first. The result is an output index\\nthat contains peptides that appear in the first\\nindex but not the second."
    xlink_assign_ions: "Given a spectrum and a pair of cross-linked\\npeptides, assign theoretical ion type labels to\\npeaks in the observed spectrum."
    xlink_score_spectrum: "Given a cross-linked peptide and a spectrum\\ncalculate the corresponding XCorr score a number of\\ndifferent ways."
    localize_modification: "This command finds, for each peptide-spectrum match\\n(PSM) in a given set, the most likely location\\nalong the peptide for a post-translational\\nmodification (PTM). The mass of the PTM is inferred\\nfrom the difference between the spectrum neutral\\nmass and the peptide mass."
    extract_columns: "Print specified columns from a tab-delimited file."
    extract_rows: "Print specified rows from a tab-delimited file."
    stat_column: "Collect summary statistics from a column in a\\ntab-delimited file."
    sort_by_column: "Sorts a tab-delimited file by a column."
  }
  output {
    File out_stdout = stdout()
  }
}