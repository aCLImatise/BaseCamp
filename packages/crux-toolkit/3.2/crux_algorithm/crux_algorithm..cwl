class: CommandLineTool
id: crux_algorithm..cwl
inputs:
- id: in_bullseye
  doc: "Assign high resolution precursor m/z values to\nMS/MS data using the Hardklör\
    \ algorithm."
  type: string
  inputBinding:
    position: 0
- id: in_tide_index
  doc: "Create an index for all peptides in a fasta file,\nfor use in subsequent calls\
    \ to tide-search."
  type: string
  inputBinding:
    position: 1
- id: in_tide_search
  doc: "Search a collection of spectra against a sequence\ndatabase, returning a collection\
    \ of\npeptide-spectrum matches (PSMs). This is a fast\nsearch engine but requires\
    \ that you first build an\nindex with tide-index."
  type: string
  inputBinding:
    position: 2
- id: in_comet
  doc: "Search a collection of spectra against a sequence\ndatabase, returning a collection\
    \ of PSMs. This\nsearch engine runs directly on a protein database\nin FASTA format."
  type: string
  inputBinding:
    position: 3
- id: in_percolator
  doc: "Re-rank a collection of PSMs using the Percolator\nalgorithm. Optionally,\
    \ also produce protein\nrankings using the Fido algorithm."
  type: string
  inputBinding:
    position: 4
- id: in_q_ranker
  doc: Re-rank a collection of PSMs using the Q-ranker
  type: string
  inputBinding:
    position: 5
- id: in_algorithm_dot
  doc: barista                  Rank PSMs, peptides and proteins, assigning a
  type: string
  inputBinding:
    position: 6
- id: in_search_for_x_links
  doc: "Search a collection of spectra against a sequence\ndatabase, returning a collection\
    \ of matches\ncorresponding to linear and cross-linked peptides\nscored by XCorr."
  type: string
  inputBinding:
    position: 0
- id: in_spectral_counts
  doc: "Quantify peptides or proteins using one of three\nspectral counting methods."
  type: string
  inputBinding:
    position: 1
- id: in_pipeline
  doc: "Runs a series of Crux tools on a protein database\nand one or more sets of\
    \ tandem mass spectra."
  type: string
  inputBinding:
    position: 2
- id: in_cascade_search
  doc: "An iterative procedure for incorporating\ninformation about peptide groups\
    \ into the database\nsearch and confidence estimation procedure."
  type: string
  inputBinding:
    position: 3
- id: in_assign_confidence
  doc: "Assign two types of statistical confidence measures\n(q-values and posterior\
    \ error probabilities) to\neach PSM in a given set."
  type: string
  inputBinding:
    position: 4
- id: in_make_pin
  doc: "Given a set of search results files, generate a pin\nfile for input to crux\
    \ percolator"
  type: string
  inputBinding:
    position: 0
- id: in_predict_peptide_ions
  doc: "Given a peptide and a charge state, predict the m/z\nvalues of the resulting\
    \ fragment ions."
  type: string
  inputBinding:
    position: 1
- id: in_hard_klor
  doc: "Identify isotopic distributions from\nhigh-resolution mass spectra."
  type: string
  inputBinding:
    position: 2
- id: in_param_medic
  doc: "Examine the spectra in a file to estimate the best\nprecursor and fragment\
    \ error tolerances for\ndatabase search."
  type: string
  inputBinding:
    position: 3
- id: in_print_processed_spectra
  doc: "Process spectra as for scoring xcorr and print the\nresults to a file."
  type: string
  inputBinding:
    position: 4
- id: in_generate_peptides
  doc: "Extract from a given set of protein sequences a\nlist of target and decoy\
    \ peptides fitting the\nspecified criteria."
  type: string
  inputBinding:
    position: 5
- id: in_get_ms_two_spectrum
  doc: "Extract one or more fragmentation spectra,\nspecified by scan number, from\
    \ an MS2 file."
  type: long
  inputBinding:
    position: 6
- id: in_version
  doc: "Print the Crux version number to standard output,\nthen exit."
  type: string
  inputBinding:
    position: 7
- id: in_psm_convert
  doc: "Reads in a file containing peptide-spectrum matches\n(PSMs) in one of the\
    \ variety of supported formats\nand outputs the same PSMs in a different format"
  type: string
  inputBinding:
    position: 8
- id: in_subtract_index
  doc: "This command takes two peptide indices, created by\nthe tide-index command,\
    \ and subtracts the second\nindex from the first. The result is an output index\n\
    that contains peptides that appear in the first\nindex but not the second."
  type: string
  inputBinding:
    position: 9
- id: in_xlink_assign_ions
  doc: "Given a spectrum and a pair of cross-linked\npeptides, assign theoretical\
    \ ion type labels to\npeaks in the observed spectrum."
  type: string
  inputBinding:
    position: 10
- id: in_xlink_score_spectrum
  doc: "Given a cross-linked peptide and a spectrum\ncalculate the corresponding XCorr\
    \ score a number of\ndifferent ways."
  type: string
  inputBinding:
    position: 11
- id: in_localize_modification
  doc: "This command finds, for each peptide-spectrum match\n(PSM) in a given set,\
    \ the most likely location\nalong the peptide for a post-translational\nmodification\
    \ (PTM). The mass of the PTM is inferred\nfrom the difference between the spectrum\
    \ neutral\nmass and the peptide mass."
  type: string
  inputBinding:
    position: 12
- id: in_extract_columns
  doc: Print specified columns from a tab-delimited file.
  type: string
  inputBinding:
    position: 13
- id: in_extract_rows
  doc: Print specified rows from a tab-delimited file.
  type: string
  inputBinding:
    position: 14
- id: in_stat_column
  doc: "Collect summary statistics from a column in a\ntab-delimited file."
  type: string
  inputBinding:
    position: 15
- id: in_sort_by_column
  doc: Sorts a tab-delimited file by a column.
  type: string
  inputBinding:
    position: 16
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- algorithm.
