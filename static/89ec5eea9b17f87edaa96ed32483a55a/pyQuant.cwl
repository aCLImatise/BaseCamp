class: CommandLineTool
id: pyQuant.cwl
inputs:
- id: in_threads_run_default
  doc: 'Threads to run (default: 1)'
  type: long
  inputBinding:
    prefix: -p
- id: in_scan_files_providedassumed
  doc: "[SCAN_FILE [SCAN_FILE ...]]\nThe scan file(s) for the raw data. If not provided,\n\
    assumed to be in the directory of the\nprocessed/tabbed/peaklist file. (default:\
    \ None)"
  type: boolean
  inputBinding:
    prefix: --scan-file
- id: in_scan_file_dir
  doc: 'The directory containing raw data. (default: None)'
  type: File
  inputBinding:
    prefix: --scan-file-dir
- id: in_precision
  doc: "The precision for storing m/z values. Defaults to 6\ndecimal places. (default:\
    \ 6)"
  type: double
  inputBinding:
    prefix: --precision
- id: in_precursor_ppm
  doc: "The mass accuracy for the first monoisotopic peak in\nppm. (default: 5)"
  type: long
  inputBinding:
    prefix: --precursor-ppm
- id: in_isotope_ppm
  doc: "The mass accuracy for the isotopic cluster. (default:\n2.5)"
  type: double
  inputBinding:
    prefix: --isotope-ppm
- id: in_spread
  doc: "Assume there is spread of the isotopic label.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --spread
- id: in_search_file
  doc: "A search output or Proteome Discoverer msf file\n(default: None)"
  type: File
  inputBinding:
    prefix: --search-file
- id: in_skip
  doc: "If true, skip scans with missing files in the mapping.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --skip
- id: in_peptide
  doc: "[PEPTIDE [PEPTIDE ...]]\nThe peptide(s) to limit quantification to. (default:\n\
    None)"
  type: boolean
  inputBinding:
    prefix: --peptide
- id: in_peptide_file
  doc: "A file of peptide(s) to limit quantification to.\n(default: None)"
  type: File
  inputBinding:
    prefix: --peptide-file
- id: in_scan
  doc: "[SCAN [SCAN ...]]\nThe scan(s) to limit quantification to. (default:\nNone)"
  type: boolean
  inputBinding:
    prefix: --scan
- id: in_mva
  doc: "Analyze files in 'missing value' mode. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --mva
- id: in_rt_window
  doc: "The maximal deviation of a scan's retention time to be\nconsidered for analysis.\
    \ (default: 0.25)"
  type: double
  inputBinding:
    prefix: --rt-window
- id: in_label_scheme
  doc: "The file corresponding to the labeling scheme\nutilized. (default: None)"
  type: File
  inputBinding:
    prefix: --label-scheme
- id: in_label_method
  doc: 'Predefined labeling schemes to use. (default: None)'
  type: string
  inputBinding:
    prefix: --label-method
- id: in_reference_label
  doc: "The label to use as a reference (by default all\ncomparisons are taken). (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --reference-label
- id: in_tsv
  doc: "A delimited file containing scan information.\n(default: None)"
  type: File
  inputBinding:
    prefix: --tsv
- id: in_label
  doc: "The column indicating the label state of the peptide.\nIf not found, entry\
    \ assumed to be light variant.\n(default: Labeling State)"
  type: string
  inputBinding:
    prefix: --label
- id: in_peptide_col
  doc: 'The column indicating the peptide. (default: Peptide)'
  type: string
  inputBinding:
    prefix: --peptide-col
- id: in_rt
  doc: "The column indicating the retention time. (default:\nRetention time)"
  type: string
  inputBinding:
    prefix: --rt
- id: in_mz
  doc: "The column indicating the MZ value of the precursor\nion. This is not the\
    \ MH+. (default: Light Precursor)"
  type: string
  inputBinding:
    prefix: --mz
- id: in_scan_col
  doc: "The column indicating the scan corresponding to the\nion. (default: MS2 Spectrum\
    \ ID)"
  type: long
  inputBinding:
    prefix: --scan-col
- id: in_charge
  doc: "The column indicating the charge state of the ion.\n(default: Charge)"
  type: string
  inputBinding:
    prefix: --charge
- id: in_source
  doc: "The column indicating the raw file the scan is\ncontained in. (default: Raw\
    \ file)"
  type: File
  inputBinding:
    prefix: --source
- id: in_msn_id
  doc: "The ms level to search for the ion in. Default: 2\n(ms2) (default: 2)"
  type: long
  inputBinding:
    prefix: --msn-id
- id: in_msn_quant_from
  doc: "The ms level to quantify values from. i.e. if we are\nidentifying an ion in\
    \ ms2, we can quantify it in ms1\n(or ms2). Default: msn value-1 (default: None)"
  type: long
  inputBinding:
    prefix: --msn-quant-from
- id: in_msn_ion
  doc: "M/Z values to search for in the scans. To search for\nmultiple m/z values\
    \ for a given ion, separate m/z\nvalues with a comma. (default: None)"
  type: string[]
  inputBinding:
    prefix: --msn-ion
- id: in_msn_ion_rt
  doc: 'RT values each ion is expected at. (default: None)'
  type: string[]
  inputBinding:
    prefix: --msn-ion-rt
- id: in_msn_peak_list
  doc: "A file containing peaks to search for in the scans.\n(default: None)"
  type: File
  inputBinding:
    prefix: --msn-peaklist
- id: in_msn_ppm
  doc: "The error tolerance for identifying the ion(s).\n(default: 200)"
  type: long
  inputBinding:
    prefix: --msn-ppm
- id: in_msn_rt_window
  doc: "The range of retention times for identifying the\nion(s). (ex: 7.54-9.43)\
    \ (default: None)"
  type: string[]
  inputBinding:
    prefix: --msn-rt-window
- id: in_msn_all_scans
  doc: "Search for the ion across all scans (ie if you have 3\nions, you will have\
    \ 3 results with one long XIC)\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --msn-all-scans
- id: in_require_all_ions
  doc: "If multiple ions are set (in the style of\n93.15,105.15), all ions must be\
    \ found in a scan.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --require-all-ions
- id: in_quant_method
  doc: "The process to use for quantification. Default:\nIntegrate for ms1, sum for\
    \ ms2+. (default: None)"
  type: string
  inputBinding:
    prefix: --quant-method
- id: in_reporter_ion
  doc: "Indicates that reporter ions are being used. As such,\nwe only analyze a single\
    \ scan. (default: False)"
  type: boolean
  inputBinding:
    prefix: --reporter-ion
- id: in_iso_topo_logue_limit
  doc: 'How many isotopologues to quantify (default: -1)'
  type: long
  inputBinding:
    prefix: --isotopologue-limit
- id: in_overlapping_labels
  doc: "This declares the mz values of labels will overlap. It\nis useful for data\
    \ such as neucode, but not needed for\nonly SILAC labeling. (default: False)"
  type: boolean
  inputBinding:
    prefix: --overlapping-labels
- id: in_labels_needed
  doc: "How many labels need to be detected to quantify a scan\n(ie if you have a\
    \ 2 state experiment and set this to\n2, it will only quantify scans where both\
    \ occur.\n(default: 1)"
  type: long
  inputBinding:
    prefix: --labels-needed
- id: in_merge_labels
  doc: "Merge labels together to a single XIC. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --merge-labels
- id: in_min_scans
  doc: "How many quantification scans are needed to quantify a\nscan. (default: 1)"
  type: long
  inputBinding:
    prefix: --min-scans
- id: in_min_resolution
  doc: "The minimal resolving power of a scan to consider for\nquantification. Useful\
    \ for skipping low-res scans\n(default: 0)"
  type: long
  inputBinding:
    prefix: --min-resolution
- id: in_no_mass_accuracy_correction
  doc: "Disables the mass accuracy correction. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --no-mass-accuracy-correction
- id: in_no_contaminant_detection
  doc: "Disables routine to check if an ion is a contaminant\nof a nearby peptide\
    \ (checks if its a likely\nisotopologue). (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-contaminant-detection
- id: in_peak_find_method
  doc: "The method to use to identify peaks within data. For\nLC-MS, relative-max\
    \ is usually best. For smooth data,\nderivative is better. (default: relative-max)"
  type: string
  inputBinding:
    prefix: --peak-find-method
- id: in_peak_find_mode
  doc: "This picks some predefined parameters for various use\ncases. Fast is good\
    \ for robust data with few peaks,\nslow is good for complex data with overlapping\
    \ peaks\nof very different size. (default: average)"
  type: string
  inputBinding:
    prefix: --peak-find-mode
- id: in_gap_interpolation
  doc: "This interpolates missing data in scans. The parameter\nshould be a number\
    \ that is the maximal gap size to\nfill (ie 2 means a gap of 2 scans). Can be\
    \ useful for\nlow intensity LC-MS data. (default: 0)"
  type: long
  inputBinding:
    prefix: --gap-interpolation
- id: in_fit_baseline
  doc: "Fit a separate line for the baseline of each peak.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --fit-baseline
- id: in_peak_cut_off
  doc: "The threshold from the initial retention time a peak\ncan fall by before being\
    \ discarded (default: 0.05)"
  type: double
  inputBinding:
    prefix: --peak-cutoff
- id: in_max_peaks
  doc: "The maximal number of peaks to detect per scan. A\nlower value can help with\
    \ very noisy data. (default:\n-1)"
  type: long
  inputBinding:
    prefix: --max-peaks
- id: in_peaks_n
  doc: "The number of peaks to report per scan. Useful for\nions with multiple elution\
    \ times. (default: 1)"
  type: long
  inputBinding:
    prefix: --peaks-n
- id: in_no_rt_guide
  doc: "Do not use the retention time to bias for peaks\ncontaining the MS trigger\
    \ time. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-rt-guide
- id: in_snr_filter
  doc: 'Filter peaks below a given SNR. (default: 0)'
  type: long
  inputBinding:
    prefix: --snr-filter
- id: in_zscore_filter
  doc: 'Peaks below a given z-score are excluded. (default: 0)'
  type: long
  inputBinding:
    prefix: --zscore-filter
- id: in_filter_width
  doc: "The window size for snr/zscore filtering. Default:\nentire scan (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --filter-width
- id: in_r_two_cut_off
  doc: "The minimal R^2 for a peak to be kept. Should be a\nvalue between 0 and 1\
    \ (default: None)"
  type: long
  inputBinding:
    prefix: --r2-cutoff
- id: in_intensity_filter
  doc: "Filter peaks whose peak are below a given intensity.\n(default: 0)"
  type: long
  inputBinding:
    prefix: --intensity-filter
- id: in_percentile_filter
  doc: "Filter peaks whose peak are below a given percentile\nof the data. (default:\
    \ 0)"
  type: long
  inputBinding:
    prefix: --percentile-filter
- id: in_min_peak_separation
  doc: "Peaks separated by less than this distance will be\ncombined. For very crisp\
    \ data, set this to a lower\nnumber. (minimal value is 1) (default: 5)"
  type: long
  inputBinding:
    prefix: --min-peak-separation
- id: in_disable_peak_filtering
  doc: "This will disable smoothing of data prior to peak\nfinding. If you have very\
    \ good LC, this may be used to\nidentify small peaks. (default: False)"
  type: boolean
  inputBinding:
    prefix: --disable-peak-filtering
- id: in_merge_isotopes
  doc: "Merge Isotopologues together prior to fitting.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --merge-isotopes
- id: in_peak_resolution_mode
  doc: "The method to use to resolve peaks across multiple\nXICs (default: common-peak)"
  type: string
  inputBinding:
    prefix: --peak-resolution-mode
- id: in_xic_snr
  doc: "When the SNR of the XIC falls below this, stop\nsearching for more data. Useful\
    \ for escaping from\nnoisy shoulders and contaminants. (default: 1.0)"
  type: double
  inputBinding:
    prefix: --xic-snr
- id: in_xic_missing_ion_count
  doc: "This specifies how many consequtive scans an ion can\nbe missing for until\
    \ it is no longer considered.\n(default: 1)"
  type: long
  inputBinding:
    prefix: --xic-missing-ion-count
- id: in_xic_window_size
  doc: "When the number of scans in a given direction from the\ninitial datapoint\
    \ of an XIC passes this, stop. Default\nis -1 (disabled). Useful for removing\
    \ contaminants\n(default: -1)"
  type: long
  inputBinding:
    prefix: --xic-window-size
- id: in_xic_smooth
  doc: "Prior to fitting, smooth data with a Gaussian filter.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --xic-smooth
- id: in_export_msn
  doc: "This will export spectra of a given MSN that were used\nto provide the quantification.\
    \ (default: True)"
  type: boolean
  inputBinding:
    prefix: --export-msn
- id: in_debug
  doc: 'This will output debug information. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_html
  doc: 'Output a HTML table summary. (default: False)'
  type: boolean
  inputBinding:
    prefix: --html
- id: in_resume
  doc: "Will resume from the last run. Only works if not\ndirecting output to stdout.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --resume
- id: in_sample
  doc: "How much of the data to sample. Enter as a decimal (ie\n1.0 for everything,\
    \ 0.1 for 10%) (default: 1.0)"
  type: double
  inputBinding:
    prefix: --sample
- id: in_disable_stats
  doc: "Disable confidence statistics on data. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --disable-stats
- id: in_no_ratios
  doc: "Disable reporting of ratios in output. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --no-ratios
- id: in_prefix_file_output
  doc: "[OUT], --out [OUT]\nThe prefix for the file output (default: None)"
  type: File
  inputBinding:
    prefix: -o
- id: in_export_mzm_l
  doc: "Create an mzml file of spectra contained within each\npeak. (default: False)"
  type: boolean
  inputBinding:
    prefix: --export-mzml
- id: in_export_mode
  doc: "How to export the scans. per-peak: A mzML per peak\nidentified. per-id: A\
    \ mzML per ion identified (each\nrow of the output gets an mzML). per-file: All\
    \ scans\nmatched per raw file. (default: per-peak)"
  type: File
  inputBinding:
    prefix: --export-mode
- id: in_neu_code
  doc: "This will select parameters specific for neucode.\nNote: You still must define\
    \ a labeling scheme.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --neucode
- id: in_isobaric_tags
  doc: "This will select parameters specific for isobaric tag\nbased labeling (TMT/iTRAQ).\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --isobaric-tags
- id: in_ms_three
  doc: "This will select parameters specific for ms3 based\nquantification. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --ms3
- id: in_max_quant
  doc: "This will select parameters specific for a MaxQuant\nevidence file. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --maxquant
- id: in_gcms
  doc: "This will select parameters specific for ion\nidentification and quantification\
    \ in GCMS experiments.\n(default: False)\n"
  type: boolean
  inputBinding:
    prefix: --gcms
- id: in_v_zero_dot_two_dot_four
  doc: ''
  type: double
  inputBinding:
    position: 0
- id: in_var_82
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_search_file
  doc: "A search output or Proteome Discoverer msf file\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_search_file)
- id: out_prefix_file_output
  doc: "[OUT], --out [OUT]\nThe prefix for the file output (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_prefix_file_output)
- id: out_export_mode
  doc: "How to export the scans. per-peak: A mzML per peak\nidentified. per-id: A\
    \ mzML per ion identified (each\nrow of the output gets an mzML). per-file: All\
    \ scans\nmatched per raw file. (default: per-peak)"
  type: File
  outputBinding:
    glob: $(inputs.in_export_mode)
cwlVersion: v1.1
baseCommand:
- pyQuant
