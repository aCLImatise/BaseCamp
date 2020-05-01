#!/usr/bin/env cwl-runner

baseCommand:
- ProteomicsLFQ
class: CommandLineTool
cwlVersion: v1.0
id: proteomicslfq
inputs:
- doc: "*                                           Input files (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                          Identifications filtered at PSM\
    \ level (e.g., q-value < 0.01).And annotated with PEP as main score. We suggest\
    \ using: 1. PercolatorAdapter tool (score_type = 'q-value', -post-processing-tdc)\
    \ 2. FalseDiscoveryRate (FDR:PSM = 0.01) 3. IDScoreSwitcher (-old_score q-value\
    \ -new_score MS:1001493 -new_score_orientation lower_better -new_score_type) To\
    \ obtain well calibrated PEPs and an inital reduction of PSMs ID files must be\
    \ provided in same order as spectra files. (valid formats: 'idXML', 'mzId')"
  id: ids
  inputBinding:
    prefix: -ids
  type: File
- doc: "Design file (valid formats: 'tsv')"
  id: design
  inputBinding:
    prefix: -design
  type: File
- doc: "Fasta file (valid formats: 'fasta')"
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: File
- doc: "*                                               Output mzTab file (valid formats:\
    \ 'mzTab')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output MSstats input file (valid formats: 'csv')"
  id: out_ms_stats
  inputBinding:
    prefix: -out_msstats
  type: File
- doc: "Output consensusXML file (valid formats: 'consensusXML')"
  id: out_c_xml
  inputBinding:
    prefix: -out_cxml
  type: File
- doc: "Protein FDR threshold (0.05=5%). (default: '0.05' min: '0.0' max: '1.0')"
  id: protein_fdr
  inputBinding:
    prefix: -proteinFDR
  type: string
- doc: "PSM FDR threshold (e.g. 0.05=5%). If Bayesian inference was chosen, it is\
    \ equivalent with a peptide FDR (default: '1.0' min: '0.0' max: '1.0')"
  id: psm_fdr
  inputBinding:
    prefix: -psmFDR
  type: string
- doc: ":signal_to_noise <value>                       Minimal signal-to-noise ratio\
    \ for a peak to be picked (0.0 disables SNT estimation!) (default: '0.0' min:\
    \ '0.0')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: ":ms_levels <numbers>                           List of MS levels for which\
    \ the peak picking is applied. If empty, auto mode is enabled, all peaks which\
    \ aren't picked yet will get picked. Other  scans are copied to the output without\
    \ changes. (min: '1')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: :report_FWHM                                   Add metadata for FWHM (as floatDataArray
    named 'FWHM' or 'FWHM_ppm', depending on param 'report_FWHM_unit') for each picked
    peak.
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: ":report_FWHM_unit <choice>                     Unit of FWHM. Either absolute\
    \ in the unit of input, e.g. 'm/z' for spectra, or relative as ppm (only sensible\
    \ for spectra, not chromatograms). (defau lt: 'relative' valid: 'relative', 'absolute')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: ":SignalToNoise:win_len <value>                 Window length in Thomson (default:\
    \ '200.0' min: '1.0')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: ":SignalToNoise:bin_count <number>              Number of bins for intensity\
    \ values (default: '30' min: '3')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: ":SignalToNoise:min_required_elements <number>  Minimum number of elements\
    \ required in a window (otherwise it is considered sparse) (default: '10' min:\
    \ '1')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: ":SignalToNoise:write_log_messages <choice>     Write out log messages in case\
    \ of sparse windows or median in rightmost histogram bin (default: 'true' valid:\
    \ 'true', 'false')"
  id: centroid_ing
  inputBinding:
    prefix: -Centroiding
  type: boolean
- doc: :candidates_out <text>               Optional output file with feature candidates.
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":extract:batch_size <number>         Nr of peptides used in each batch of\
    \ chromatogram extraction. Smaller values decrease memory usage but increase runtime.\
    \ (default: '1000' min: '1')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":extract:mz_window <value>           M/z window size for chromatogram extraction\
    \ (unit: ppm if 1 or greater, else Da/Th) (default: '10.0' min: '0.0')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":extract:n_isotopes <number>         Number of isotopes to include in each\
    \ peptide assay. (default: '2' min: '2')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":detect:peak_width <value>           Expected elution peak width in seconds,\
    \ for smoothing (Gauss filter). Also determines the RT extration window, unless\
    \ set explicitly via 'extract:rt_ window'. (default: '60.0' min: '0.0')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":detect:mapping_tolerance <value>    RT tolerance (plus/minus) for mapping\
    \ peptide IDs to features. Absolute value in seconds if 1 or greater, else relative\
    \ to the RT span of the feature . (default: '0.0' min: '0.0')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":svm:samples <number>                Number of observations to use for training\
    \ ('0' for all) (default: '0' min: '0')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: :svm:no_selection                    By default, roughly the same number of
    positive and negative observations, with the same intensity distribution, are
    selected for training. This aims to reduce biases, but also reduces the amount
    of training data. Set this flag to skip this procedure and consider all available
    observations (subjec t to 'svm:samples').
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":svm:xval_out <choice>               Output file: SVM cross-validation (parameter\
    \ optimization) results (valid formats: 'csv')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":svm:kernel <choice>                 SVM kernel (default: 'RBF' valid: 'RBF',\
    \ 'linear')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":svm:xval <number>                   Number of partitions for cross-validation\
    \ (parameter optimization) (default: '5' min: '1')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":svm:log2_C <values>                 Values to try for the SVM parameter 'C'\
    \ during parameter optimization. A value 'x' is used as 'C = 2^x'. (default: '[-5.0\
    \ -3.0 -1.0 1.0 3.0 5.0 7.0  9.0 11.0 13.0 15.0]')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":svm:log2_gamma <values>             Values to try for the SVM parameter 'gamma'\
    \ during parameter optimization (RBF kernel only). A value 'x' is used as 'gamma\
    \ = 2^x'. (default: '[-15.0  -13.0 -11.0 -9.0 -7.0 -5.0 -3.0 -1.0 1.0 3.0]')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: ":model:type <choice>                 Type of elution model to fit to features\
    \ (default: 'symmetric' valid: 'symmetric', 'asymmetric', 'none')"
  id: peptide_quantification
  inputBinding:
    prefix: -PeptideQuantification
  type: boolean
- doc: :score_cutoff                                    If only IDs above a score
    cutoff should be used. Used together with min_score.
  id: alignment
  inputBinding:
    prefix: -Alignment
  type: boolean
- doc: ":min_score <value>                               Minimum score for an ID to\
    \ be considered. Applies to the last score calculated. Unless you have very few\
    \ runs or identifications, increase this value to focus on more informative peptides.\
    \ (default: '0.05')"
  id: alignment
  inputBinding:
    prefix: -Alignment
  type: boolean
- doc: ":min_run_occur <number>                          Minimum number of runs (incl.\
    \ reference, if any) in which a peptide must occur to be used for the alignment.\
    \ Unless you have very few runs or identifications, increase this value to focus\
    \ on more informative peptides. (default: '2' min: '2')"
  id: alignment
  inputBinding:
    prefix: -Alignment
  type: boolean
- doc: ":max_rt_shift <value>                            Maximum realistic RT difference\
    \ for a peptide (median per run vs. reference). Peptides with higher shifts (outliers)\
    \ are not used to compute the alig nment. If 0, no limit (disable filter); if\
    \ > 1, the final value in seconds; if <= 1, taken as a fraction of the range of\
    \ the reference RT scale. (default: '0.1' min: '0.0')"
  id: alignment
  inputBinding:
    prefix: -Alignment
  type: boolean
- doc: :use_unassigned_peptides                         Should unassigned peptide
    identifications be used when computing an alignment of feature or consensus maps?
    If 'false', only peptide IDs assigned to  features will be used.
  id: alignment
  inputBinding:
    prefix: -Alignment
  type: boolean
- doc: ":use_feature_rt <choice>                         When aligning feature or\
    \ consensus maps, don't use the retention time of a peptide identification directly;\
    \ instead, use the retention time of the  centroid of the feature (apex of the\
    \ elution profile) that the peptide was matched to. If different identifications\
    \ are matched to one feature, only the peptide closest to the centroid in RT is\
    \ used. Precludes 'use_unassigned_peptides'. (default: 'true' valid: 'true', 'false')"
  id: alignment
  inputBinding:
    prefix: -Alignment
  type: boolean
- doc: :use_identifications                               Never link features that
    are annotated with different peptides (only the best hit per peptide identification
    is taken into account).
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":nr_partitions <number>                            How many partitions in\
    \ m/z space should be used for the algorithm (more partitions means faster runtime\
    \ and more memory efficient execution ) (defaul t: '100' min: '1')"
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":ignore_charge                                     False [default]: pairing\
    \ requires equal charge state (or at least one unknown charge '0'); true: Pairing\
    \ irrespective of charge state"
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":ignore_adduct <choice>                            True [default]: pairing\
    \ requires equal adducts (or at least one without adduct annotation); true: Pairing\
    \ irrespective of adducts (default: 'true'  valid: 'true', 'false')"
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":distance_RT:max_difference <value>                Never pair features with\
    \ a larger RT distance (in seconds). (default: '100.0' min: '0.0')"
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":distance_MZ:max_difference <value>                Never pair features with\
    \ larger m/z distance (unit defined by 'unit') (default: '0.3' min: '0.0')"
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":distance_MZ:unit <choice>                         Unit of the 'max_difference'\
    \ parameter (default: 'Da' valid: 'Da', 'ppm')"
  id: linking
  inputBinding:
    prefix: -Linking
  type: boolean
- doc: ":top <number>                        Calculate protein abundance from this\
    \ number of proteotypic peptides (most abundant first; '0' for all) (default:\
    \ '3' min: '0')"
  id: protein_quantification
  inputBinding:
    prefix: -ProteinQuantification
  type: boolean
- doc: ":average <choice>                    Averaging method used to compute protein\
    \ abundances from peptide abundances (default: 'median' valid: 'median', 'mean',\
    \ 'weighted_mean', 'sum')"
  id: protein_quantification
  inputBinding:
    prefix: -ProteinQuantification
  type: boolean
- doc: ":include_all <choice>                Include results for proteins with fewer\
    \ proteotypic peptides than indicated by 'top' (no effect if 'top' is 0 or 1)\
    \ (default: 'true' valid: 'true',  'false')"
  id: protein_quantification
  inputBinding:
    prefix: -ProteinQuantification
  type: boolean
- doc: :best_charge_and_fraction            Distinguish between fraction and charge
    states of a peptide. For peptides, abundances will be reported separately for
    each fraction and charge; for proteins, abundances will be computed based only
    on the most prevalent charge observed of each peptide (over all fractions). By
    default, abundances are summed over all charge states.
  id: protein_quantification
  inputBinding:
    prefix: -ProteinQuantification
  type: boolean
- doc: :consensus:normalize                 Scale peptide abundances so that medians
    of all samples are equal
  id: protein_quantification
  inputBinding:
    prefix: -ProteinQuantification
  type: boolean
- doc: :consensus:fix_peptides              Use the same peptides for protein quantification
    across all samples. With 'top 0', all peptides that occur in every sample are
    considered. Otherwise ('top N'), the N peptides that occur in the most samples
    (independently of each other) are selected, breaking ties by total abundance (there
    is no guarantee that the best co-ocurring peptides are chosen!).
  id: protein_quantification
  inputBinding:
    prefix: -ProteinQuantification
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
