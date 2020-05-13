class: CommandLineTool
id: pyQuant.cwl
inputs:
- id: p
  doc: 'Threads to run (default: 1)'
  type: string
  inputBinding:
    prefix: -p
- id: scan_file
  doc: '[SCAN_FILE [SCAN_FILE ...]] The scan file(s) for the raw data. If not provided,
    assumed to be in the directory of the processed/tabbed/peaklist file. (default:
    None)'
  type: boolean
  inputBinding:
    prefix: --scan-file
- id: scan_file_dir
  doc: 'The directory containing raw data. (default: None)'
  type: string
  inputBinding:
    prefix: --scan-file-dir
- id: precision
  doc: 'The precision for storing m/z values. Defaults to 6 decimal places. (default:
    6)'
  type: string
  inputBinding:
    prefix: --precision
- id: precursor_ppm
  doc: 'The mass accuracy for the first monoisotopic peak in ppm. (default: 5)'
  type: string
  inputBinding:
    prefix: --precursor-ppm
- id: isotope_ppm
  doc: 'The mass accuracy for the isotopic cluster. (default: 2.5)'
  type: string
  inputBinding:
    prefix: --isotope-ppm
- id: spread
  doc: 'Assume there is spread of the isotopic label. (default: False)'
  type: boolean
  inputBinding:
    prefix: --spread
- id: search_file
  doc: 'A search output or Proteome Discoverer msf file (default: None)'
  type: string
  inputBinding:
    prefix: --search-file
- id: skip
  doc: 'If true, skip scans with missing files in the mapping. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip
- id: peptide
  doc: '[PEPTIDE [PEPTIDE ...]] The peptide(s) to limit quantification to. (default:
    None)'
  type: boolean
  inputBinding:
    prefix: --peptide
- id: peptide_file
  doc: 'A file of peptide(s) to limit quantification to. (default: None)'
  type: string
  inputBinding:
    prefix: --peptide-file
- id: scan
  doc: '[SCAN [SCAN ...]] The scan(s) to limit quantification to. (default: None)'
  type: boolean
  inputBinding:
    prefix: --scan
- id: mva
  doc: "Analyze files in 'missing value' mode. (default: False)"
  type: boolean
  inputBinding:
    prefix: --mva
- id: rt_window
  doc: "The maximal deviation of a scan's retention time to be considered for analysis.\
    \ (default: 0.25)"
  type: string
  inputBinding:
    prefix: --rt-window
- id: label_scheme
  doc: 'The file corresponding to the labeling scheme utilized. (default: None)'
  type: string
  inputBinding:
    prefix: --label-scheme
- id: label_method
  doc: 'Predefined labeling schemes to use. (default: None)'
  type: string
  inputBinding:
    prefix: --label-method
- id: reference_label
  doc: 'The label to use as a reference (by default all comparisons are taken). (default:
    None)'
  type: string
  inputBinding:
    prefix: --reference-label
- id: tsv
  doc: 'A delimited file containing scan information. (default: None)'
  type: string
  inputBinding:
    prefix: --tsv
- id: label
  doc: 'The column indicating the label state of the peptide. If not found, entry
    assumed to be light variant. (default: Labeling State)'
  type: string
  inputBinding:
    prefix: --label
- id: peptide_col
  doc: 'The column indicating the peptide. (default: Peptide)'
  type: string
  inputBinding:
    prefix: --peptide-col
- id: rt
  doc: 'The column indicating the retention time. (default: Retention time)'
  type: string
  inputBinding:
    prefix: --rt
- id: mz
  doc: 'The column indicating the MZ value of the precursor ion. This is not the MH+.
    (default: Light Precursor)'
  type: string
  inputBinding:
    prefix: --mz
- id: scan_col
  doc: 'The column indicating the scan corresponding to the ion. (default: MS2 Spectrum
    ID)'
  type: string
  inputBinding:
    prefix: --scan-col
- id: charge
  doc: 'The column indicating the charge state of the ion. (default: Charge)'
  type: string
  inputBinding:
    prefix: --charge
- id: source
  doc: 'The column indicating the raw file the scan is contained in. (default: Raw
    file)'
  type: string
  inputBinding:
    prefix: --source
- id: msn_id
  doc: 'The ms level to search for the ion in. Default: 2 (ms2) (default: 2)'
  type: string
  inputBinding:
    prefix: --msn-id
- id: msn_quant_from
  doc: 'The ms level to quantify values from. i.e. if we are identifying an ion in
    ms2, we can quantify it in ms1 (or ms2). Default: msn value-1 (default: None)'
  type: string
  inputBinding:
    prefix: --msn-quant-from
- id: msn_ion
  doc: 'M/Z values to search for in the scans. To search for multiple m/z values for
    a given ion, separate m/z values with a comma. (default: None)'
  type: string[]
  inputBinding:
    prefix: --msn-ion
- id: msn_ion_rt
  doc: 'RT values each ion is expected at. (default: None)'
  type: string[]
  inputBinding:
    prefix: --msn-ion-rt
- id: msn_peak_list
  doc: 'A file containing peaks to search for in the scans. (default: None)'
  type: string
  inputBinding:
    prefix: --msn-peaklist
- id: msn_ppm
  doc: 'The error tolerance for identifying the ion(s). (default: 200)'
  type: string
  inputBinding:
    prefix: --msn-ppm
- id: msn_rt_window
  doc: 'The range of retention times for identifying the ion(s). (ex: 7.54-9.43) (default:
    None)'
  type: string[]
  inputBinding:
    prefix: --msn-rt-window
- id: msn_all_scans
  doc: 'Search for the ion across all scans (ie if you have 3 ions, you will have
    3 results with one long XIC) (default: False)'
  type: boolean
  inputBinding:
    prefix: --msn-all-scans
- id: require_all_ions
  doc: 'If multiple ions are set (in the style of 93.15,105.15), all ions must be
    found in a scan. (default: False)'
  type: boolean
  inputBinding:
    prefix: --require-all-ions
- id: quant_method
  doc: 'The process to use for quantification. Default: Integrate for ms1, sum for
    ms2+. (default: None)'
  type: string
  inputBinding:
    prefix: --quant-method
- id: reporter_ion
  doc: 'Indicates that reporter ions are being used. As such, we only analyze a single
    scan. (default: False)'
  type: boolean
  inputBinding:
    prefix: --reporter-ion
- id: iso_topo_logue_limit
  doc: 'How many isotopologues to quantify (default: -1)'
  type: string
  inputBinding:
    prefix: --isotopologue-limit
- id: overlapping_labels
  doc: 'This declares the mz values of labels will overlap. It is useful for data
    such as neucode, but not needed for only SILAC labeling. (default: False)'
  type: boolean
  inputBinding:
    prefix: --overlapping-labels
- id: labels_needed
  doc: 'How many labels need to be detected to quantify a scan (ie if you have a 2
    state experiment and set this to 2, it will only quantify scans where both occur.
    (default: 1)'
  type: string
  inputBinding:
    prefix: --labels-needed
- id: merge_labels
  doc: 'Merge labels together to a single XIC. (default: False)'
  type: boolean
  inputBinding:
    prefix: --merge-labels
- id: min_scans
  doc: 'How many quantification scans are needed to quantify a scan. (default: 1)'
  type: long
  inputBinding:
    prefix: --min-scans
- id: min_resolution
  doc: 'The minimal resolving power of a scan to consider for quantification. Useful
    for skipping low-res scans (default: 0)'
  type: long
  inputBinding:
    prefix: --min-resolution
- id: no_mass_accuracy_correction
  doc: 'Disables the mass accuracy correction. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-mass-accuracy-correction
- id: no_contaminant_detection
  doc: 'Disables routine to check if an ion is a contaminant of a nearby peptide (checks
    if its a likely isotopologue). (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-contaminant-detection
- id: peak_find_method
  doc: 'The method to use to identify peaks within data. For LC-MS, relative-max is
    usually best. For smooth data, derivative is better. (default: relative-max)'
  type: string
  inputBinding:
    prefix: --peak-find-method
- id: peak_find_mode
  doc: 'This picks some predefined parameters for various use cases. Fast is good
    for robust data with few peaks, slow is good for complex data with overlapping
    peaks of very different size. (default: average)'
  type: string
  inputBinding:
    prefix: --peak-find-mode
- id: gap_interpolation
  doc: 'This interpolates missing data in scans. The parameter should be a number
    that is the maximal gap size to fill (ie 2 means a gap of 2 scans). Can be useful
    for low intensity LC-MS data. (default: 0)'
  type: string
  inputBinding:
    prefix: --gap-interpolation
- id: fit_baseline
  doc: 'Fit a separate line for the baseline of each peak. (default: False)'
  type: boolean
  inputBinding:
    prefix: --fit-baseline
- id: peak_cut_off
  doc: 'The threshold from the initial retention time a peak can fall by before being
    discarded (default: 0.05)'
  type: string
  inputBinding:
    prefix: --peak-cutoff
- id: max_peaks
  doc: 'The maximal number of peaks to detect per scan. A lower value can help with
    very noisy data. (default: -1)'
  type: long
  inputBinding:
    prefix: --max-peaks
- id: peaks_n
  doc: 'The number of peaks to report per scan. Useful for ions with multiple elution
    times. (default: 1)'
  type: string
  inputBinding:
    prefix: --peaks-n
- id: no_rt_guide
  doc: 'Do not use the retention time to bias for peaks containing the MS trigger
    time. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-rt-guide
- id: snr_filter
  doc: 'Filter peaks below a given SNR. (default: 0)'
  type: string
  inputBinding:
    prefix: --snr-filter
- id: zscore_filter
  doc: 'Peaks below a given z-score are excluded. (default: 0)'
  type: string
  inputBinding:
    prefix: --zscore-filter
- id: filter_width
  doc: 'The window size for snr/zscore filtering. Default: entire scan (default: 0)'
  type: string
  inputBinding:
    prefix: --filter-width
- id: r2_cut_off
  doc: 'The minimal R^2 for a peak to be kept. Should be a value between 0 and 1 (default:
    None)'
  type: string
  inputBinding:
    prefix: --r2-cutoff
- id: intensity_filter
  doc: 'Filter peaks whose peak are below a given intensity. (default: 0)'
  type: long
  inputBinding:
    prefix: --intensity-filter
- id: percentile_filter
  doc: 'Filter peaks whose peak are below a given percentile of the data. (default:
    0)'
  type: string
  inputBinding:
    prefix: --percentile-filter
- id: min_peak_separation
  doc: 'Peaks separated by less than this distance will be combined. For very crisp
    data, set this to a lower number. (minimal value is 1) (default: 5)'
  type: long
  inputBinding:
    prefix: --min-peak-separation
- id: disable_peak_filtering
  doc: 'This will disable smoothing of data prior to peak finding. If you have very
    good LC, this may be used to identify small peaks. (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-peak-filtering
- id: merge_isotopes
  doc: 'Merge Isotopologues together prior to fitting. (default: False)'
  type: boolean
  inputBinding:
    prefix: --merge-isotopes
- id: peak_resolution_mode
  doc: 'The method to use to resolve peaks across multiple XICs (default: common-peak)'
  type: string
  inputBinding:
    prefix: --peak-resolution-mode
- id: xic_snr
  doc: 'When the SNR of the XIC falls below this, stop searching for more data. Useful
    for escaping from noisy shoulders and contaminants. (default: 1.0)'
  type: string
  inputBinding:
    prefix: --xic-snr
- id: xic_missing_ion_count
  doc: 'This specifies how many consequtive scans an ion can be missing for until
    it is no longer considered. (default: 1)'
  type: string
  inputBinding:
    prefix: --xic-missing-ion-count
- id: xic_window_size
  doc: 'When the number of scans in a given direction from the initial datapoint of
    an XIC passes this, stop. Default is -1 (disabled). Useful for removing contaminants
    (default: -1)'
  type: string
  inputBinding:
    prefix: --xic-window-size
- id: xic_smooth
  doc: 'Prior to fitting, smooth data with a Gaussian filter. (default: False)'
  type: boolean
  inputBinding:
    prefix: --xic-smooth
- id: export_msn
  doc: 'This will export spectra of a given MSN that were used to provide the quantification.
    (default: True)'
  type: boolean
  inputBinding:
    prefix: --export-msn
- id: debug
  doc: 'This will output debug information. (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: html
  doc: 'Output a HTML table summary. (default: False)'
  type: boolean
  inputBinding:
    prefix: --html
- id: resume
  doc: 'Will resume from the last run. Only works if not directing output to stdout.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --resume
- id: sample
  doc: 'How much of the data to sample. Enter as a decimal (ie 1.0 for everything,
    0.1 for 10%) (default: 1.0)'
  type: string
  inputBinding:
    prefix: --sample
- id: disable_stats
  doc: 'Disable confidence statistics on data. (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable-stats
- id: no_ratios
  doc: 'Disable reporting of ratios in output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-ratios
- id: o
  doc: '[OUT], --out [OUT] The prefix for the file output (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: export_mzm_l
  doc: 'Create an mzml file of spectra contained within each peak. (default: False)'
  type: boolean
  inputBinding:
    prefix: --export-mzml
- id: export_mode
  doc: 'How to export the scans. per-peak: A mzML per peak identified. per-id: A mzML
    per ion identified (each row of the output gets an mzML). per-file: All scans
    matched per raw file. (default: per-peak)'
  type: string
  inputBinding:
    prefix: --export-mode
- id: neu_code
  doc: 'This will select parameters specific for neucode. Note: You still must define
    a labeling scheme. (default: False)'
  type: boolean
  inputBinding:
    prefix: --neucode
- id: isobaric_tags
  doc: 'This will select parameters specific for isobaric tag based labeling (TMT/iTRAQ).
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --isobaric-tags
- id: ms3
  doc: 'This will select parameters specific for ms3 based quantification. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ms3
- id: max_quant
  doc: 'This will select parameters specific for a MaxQuant evidence file. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --maxquant
- id: gcms
  doc: 'This will select parameters specific for ion identification and quantification
    in GCMS experiments. (default: False)'
  type: boolean
  inputBinding:
    prefix: --gcms
outputs: []
cwlVersion: v1.1
baseCommand:
- pyQuant
