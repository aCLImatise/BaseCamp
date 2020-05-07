class: CommandLineTool
id: MSFraggerAdapter.cwl
inputs:
- id: java_executable
  doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  type: File
  inputBinding:
    prefix: -java_executable
- id: java_heap_memory
  doc: "Maximum Java heap size (in MB) (default: '3500')"
  type: string
  inputBinding:
    prefix: -java_heapmemory
- id: executable
  doc: Path to the MSFragger executable to use; may be empty if the executable is
    globally available.
  type: File
  inputBinding:
    prefix: -executable
- id: in
  doc: "*                                                              Input File\
    \ with specta for MSFragger (valid formats: 'mzML', 'mzXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                                                             MSFragger output\
    \ file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: opt_out
  doc: "MSFragger optional output file (valid formats: 'pepXML')"
  type: File
  inputBinding:
    prefix: -opt_out
- id: database
  doc: "*                                               Protein FASTA database file\
    \ path (valid formats: 'FASTA', 'fasta', 'fa', 'fas')"
  type: File
  inputBinding:
    prefix: -database
- id: tolerance
  doc: ":precursor_mass_tolerance <precursor_mass_tolerance>           Precursor mass\
    \ tolerance (window is +/- this value) (default: '20' min: '0')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: tolerance
  doc: ":precursor_mass_unit <precursor_mass_unit>                     Unit of precursor\
    \ mass tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: tolerance
  doc: ":precursor_true_tolerance <precursor_true_tolerance>           True precursor\
    \ mass tolerance (window is +/- this value). Used for tie breaker of results (in\
    \ spectrally ambiguous cases) and zero bin  boosting in open searches (0 disables\
    \ these features). This option is STRONGLY recommended for open searches. (default:\
    \ '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: tolerance
  doc: ":precursor_true_unit <precursor_true_unit>                     Unit of precursor\
    \ true tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: tolerance
  doc: ":fragment_mass_tolerance <fragment_mass_tolerance>             Fragment mass\
    \ tolerance (window is +/- this value) (default: '20' min: '0')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: tolerance
  doc: ":fragment_mass_unit <fragment_mass_unit>                       Unit of fragment\
    \ mass tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: tolerance
  doc: ":isotope_error <isotope_error>                                 Isotope correction\
    \ for MS/MS events triggered on isotopic peaks. Should be set to 0 (disabled)\
    \ for open search or 0/1/2 for correction  of narrow window searches. Shifts the\
    \ precursor mass window to multiples of this value multiplied by the mass of C13-C12.\
    \ (default: '0' valid: '0', '1', '2')"
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: digest
  doc: ":search_enzyme_name <search_enzyme_name>                          Name of\
    \ the enzyme to be written to the pepXML file (default: 'Trypsin' valid: 'Asp-N',\
    \ 'leukocyte elastase', 'Alpha-lytic protease',  '2-iodobenzoate', 'Lys-N', 'no\
    \ cleavage', 'Asp-N_ambic', 'Lys-C', 'TrypChymo', 'V8-DE', 'V8-E', 'Formic_acid',\
    \ 'Trypsin/P', 'Lys-C/P', 'Chymotrypsin', 'Clostripain/P', 'Trypsin', 'Arg-C',\
    \ 'iodosobenzoate', 'Asp-N/B', 'Glu-C+P', 'unspecific cleavage', 'PepsinA', 'PepsinA\
    \ + P', 'glutamyl endopeptidase', 'proline-endopeptidase/HKR', 'staphylococcal\
    \ protease/D', 'CNBr', 'Chymotrypsin/P', 'elastase-trypsin- chymotrypsin', 'proline\
    \ endopeptidase', 'cyanogen-bromide', 'Arg-C/P')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":search_enzyme_cutafter <search_enzyme_cutafter>                  Residues\
    \ after which the enzyme cuts (specified as a string of amino acids) (default:\
    \ 'KR')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":search_enzyme_nocutbefore <search_enzyme_nocutbefore>            Residues\
    \ that the enzyme will not cut before (default: 'P')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":num_enzyme_termini <num_enzyme_termini>                          Number of\
    \ enzyme termini (non-enzymatic (0), semi (1), fully (2) (default: 'fully' valid:\
    \ 'non-enzymatic', 'semi', 'fully')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":allowed_missed_cleavage <allowed_missed_cleavage>                Allowed\
    \ number of missed cleavages (default: '2' valid: '0', '1', '2', '3', '4', '5')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":min_length <digest_min_length>                                   Minimum\
    \ length of peptides to be generated during in-silico digestion (default: '7'\
    \ min: '0')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":max_length <digest_max_length>                                   Maximum\
    \ length of peptides to be generated during in-silico digestion (default: '64'\
    \ min: '0')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":mass_range_min <digest_mass_range_min>                           Min mass\
    \ of peptides to be generated (Da) (default: '500' min: '0')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: digest
  doc: ":mass_range_max <digest_mass_range_max>                           Max mass\
    \ of peptides to be generated (Da) (default: '5000' min: '0')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: varmod
  doc: :clip_nterm_m                                                     Specifies
    the trimming of a protein N-terminal methionine as a variable modification
  type: boolean
  inputBinding:
    prefix: -varmod
- id: varmod
  doc: :masses <varmod1_mass .. varmod7_mass>                            Masses for
    variable modifications
  type: boolean
  inputBinding:
    prefix: -varmod
- id: varmod
  doc: :syntaxes <varmod1_syntax .. varmod7_syntax>                      Syntax Strings
    for variable modifications
  type: boolean
  inputBinding:
    prefix: -varmod
- id: varmod
  doc: :enable_common                                                    Enable common
    variable modifications (15.9949 M and 42.0106 [^)
  type: boolean
  inputBinding:
    prefix: -varmod
- id: varmod
  doc: :not_allow_multiple_variable_mods_on_residue                      Do not allow
    any one amino acid to be modified by multiple variable modifications
  type: boolean
  inputBinding:
    prefix: -varmod
- id: varmod
  doc: ":max_variable_mods_per_mod <max_variable_mods_per_mod>            Maximum\
    \ number of residues that can be occupied by each variable modification (default:\
    \ '2' valid: '0', '1', '2', '3', '4', '5')"
  type: boolean
  inputBinding:
    prefix: -varmod
- id: varmod
  doc: ":max_variable_mods_combinations <max_variable_mods_combinations>  Maximum\
    \ allowed number of modified variably modified peptides from each peptide sequence,\
    \ (maximum of 65534). If a greater number than  the maximum is generated, only\
    \ the unmodified peptide is considered (default: '5000' min: '0' max: '65534')"
  type: boolean
  inputBinding:
    prefix: -varmod
- id: spectrum
  doc: ":minimum_peaks <minimum_peaks>                                  Minimum number\
    \ of peaks in experimental spectrum for matching (default: '10' min: '0')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":use_topn_peaks <use_topN_peaks>                                Pre-process\
    \ experimental spectrum to only use top N peaks (default: '50' min: '0')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":minimum_ratio <minimum_ratio>                                  Filters out\
    \ all peaks in experimental spectrum less intense than this multiple of the base\
    \ peak intensity (default: '0' min: '0' max:  '1')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":clear_mz_range_min <clear_mz_range_min>                        Removes peaks\
    \ in this m/z range prior to matching (minimum value). Useful for iTRAQ/TMT experiments\
    \ (i.e. 0.0 150.0) (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":clear_mz_range_max <clear_mz_range_max>                        Removes peaks\
    \ in this m/z range prior to matching (maximum value). Useful for iTRAQ/TMT experiments\
    \ (i.e. 0.0 150.0) (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":max_fragment_charge <max_fragment_charge>                      Maximum charge\
    \ state for theoretical fragments to match (default: '2' valid: '1', '2', '3',\
    \ '4')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ':override_charge                                                Ignores precursor
    charge and uses charge state specified in precursor_charge range (parameters:
    spectrum:precursor_charge_min and spect rum:precursor_charge_max)'
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":precursor_charge_min <precursor_charge_min>                    Min charge\
    \ of precursor charge range to consider. If specified, also spectrum:override_charge\
    \ must be set) (default: '1' min: '0')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: spectrum
  doc: ":precursor_charge_max <precursor_charge_max>                    Max charge\
    \ of precursor charge range to consider. If specified, also spectrum:override_charge\
    \ must be set) (default: '4' min: '0')"
  type: boolean
  inputBinding:
    prefix: -spectrum
- id: search
  doc: ":track_zero_topn <track_zero_topn>                                Track top\
    \ N unmodified peptide results separately from main results internally for boosting\
    \ features. Should be set to a number greater than search:output_report_topN if\
    \ zero bin boosting is desired (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":zero_bin_accept_expect <zero_bin_accept_expect>                  Ranks a\
    \ zero-bin hit above all non-zero-bin hit if it has expectation less than this\
    \ value (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":zero_bin_mult_expect <zero_bin_mult_expect>                      Multiplies\
    \ expect value of PSMs in the zero-bin during results ordering (set to less than\
    \ 1 for boosting) (default: '1' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":add_topn_complementary <add_topn_complementary>                  Inserts\
    \ complementary ions corresponding to the top N most intense fragments in each\
    \ experimental spectrum. Useful for recovery of modi fied peptides near C-terminus\
    \ in open search. 0 disables this option (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":min_fragments_modeling <min_fragments_modeling>                  Minimum\
    \ number of matched peaks in PSM for inclusion in statistical modeling (default:\
    \ '3' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":min_matched_fragments <min_matched_fragments>                    Minimum\
    \ number of matched peaks for PSM to be reported. MSFragger recommends a minimum\
    \ of 4 for narrow window searching and 6 for open  searches (default: '4' min:\
    \ '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":output_report_topn <output_report_topn>                          Reports\
    \ top N PSMs per input spectrum (default: '1' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: search
  doc: ":output_max_expect <output_max_expect>                            Suppresses\
    \ reporting of PSM if top hit has expectation greater than this threshold (default:\
    \ '50' min: '0')"
  type: boolean
  inputBinding:
    prefix: -search
- id: stat_mod
  doc: ":add_cterm_peptide <add_cterm_peptide>                           Statically\
    \ add mass in Da to C-terminal of peptide (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -statmod
- id: stat_mod
  doc: ":add_nterm_peptide <add_nterm_peptide>                           Statically\
    \ add mass in Da to N-terminal of peptide (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -statmod
- id: stat_mod
  doc: ":add_cterm_protein <add_cterm_protein>                           Statically\
    \ add mass in Da to C-terminal of protein (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -statmod
- id: stat_mod
  doc: ":add_nterm_protein <add_nterm_protein>                           Statically\
    \ add mass in Da to N-terminal of protein (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -statmod
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
- MSFraggerAdapter
