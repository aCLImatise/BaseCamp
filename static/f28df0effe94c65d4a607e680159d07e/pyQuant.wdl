version 1.0

task PyQuant {
  input {
    Int? threads_run_default
    Boolean? scan_files_providedassumed
    File? scan_file_dir
    Float? precision
    Int? precursor_ppm
    Float? isotope_ppm
    Boolean? spread
    File? search_file
    Boolean? skip
    Boolean? peptide
    File? peptide_file
    Boolean? scan
    Boolean? mva
    Float? rt_window
    File? label_scheme
    String? label_method
    String? reference_label
    File? tsv
    String? label
    String? peptide_col
    String? rt
    String? mz
    Int? scan_col
    String? charge
    File? source
    Int? msn_id
    Int? msn_quant_from
    Array[String] msn_ion
    Array[String] msn_ion_rt
    File? msn_peak_list
    Int? msn_ppm
    Array[String] msn_rt_window
    Boolean? msn_all_scans
    Boolean? require_all_ions
    String? quant_method
    Boolean? reporter_ion
    Int? iso_topo_logue_limit
    Boolean? overlapping_labels
    Int? labels_needed
    Boolean? merge_labels
    Int? min_scans
    Int? min_resolution
    Boolean? no_mass_accuracy_correction
    Boolean? no_contaminant_detection
    String? peak_find_method
    String? peak_find_mode
    Int? gap_interpolation
    Boolean? fit_baseline
    Float? peak_cut_off
    Int? max_peaks
    Int? peaks_n
    Boolean? no_rt_guide
    Int? snr_filter
    Int? zscore_filter
    Int? filter_width
    Int? r_two_cut_off
    Int? intensity_filter
    Int? percentile_filter
    Int? min_peak_separation
    Boolean? disable_peak_filtering
    Boolean? merge_isotopes
    String? peak_resolution_mode
    Float? xic_snr
    Int? xic_missing_ion_count
    Int? xic_window_size
    Boolean? xic_smooth
    Boolean? export_msn
    Boolean? debug
    Boolean? html
    Boolean? resume
    Float? sample
    Boolean? disable_stats
    Boolean? no_ratios
    File? prefix_file_output
    Boolean? export_mzm_l
    File? export_mode
    Boolean? neu_code
    Boolean? isobaric_tags
    Boolean? ms_three
    Boolean? max_quant
    Boolean? gcms
    Float v_zero_dot_two_dot_four
    String? var_82
  }
  command <<<
    pyQuant \
      ~{v_zero_dot_two_dot_four} \
      ~{var_82} \
      ~{if defined(threads_run_default) then ("-p " +  '"' + threads_run_default + '"') else ""} \
      ~{if (scan_files_providedassumed) then "--scan-file" else ""} \
      ~{if defined(scan_file_dir) then ("--scan-file-dir " +  '"' + scan_file_dir + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(precursor_ppm) then ("--precursor-ppm " +  '"' + precursor_ppm + '"') else ""} \
      ~{if defined(isotope_ppm) then ("--isotope-ppm " +  '"' + isotope_ppm + '"') else ""} \
      ~{if (spread) then "--spread" else ""} \
      ~{if defined(search_file) then ("--search-file " +  '"' + search_file + '"') else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (peptide) then "--peptide" else ""} \
      ~{if defined(peptide_file) then ("--peptide-file " +  '"' + peptide_file + '"') else ""} \
      ~{if (scan) then "--scan" else ""} \
      ~{if (mva) then "--mva" else ""} \
      ~{if defined(rt_window) then ("--rt-window " +  '"' + rt_window + '"') else ""} \
      ~{if defined(label_scheme) then ("--label-scheme " +  '"' + label_scheme + '"') else ""} \
      ~{if defined(label_method) then ("--label-method " +  '"' + label_method + '"') else ""} \
      ~{if defined(reference_label) then ("--reference-label " +  '"' + reference_label + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(peptide_col) then ("--peptide-col " +  '"' + peptide_col + '"') else ""} \
      ~{if defined(rt) then ("--rt " +  '"' + rt + '"') else ""} \
      ~{if defined(mz) then ("--mz " +  '"' + mz + '"') else ""} \
      ~{if defined(scan_col) then ("--scan-col " +  '"' + scan_col + '"') else ""} \
      ~{if defined(charge) then ("--charge " +  '"' + charge + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(msn_id) then ("--msn-id " +  '"' + msn_id + '"') else ""} \
      ~{if defined(msn_quant_from) then ("--msn-quant-from " +  '"' + msn_quant_from + '"') else ""} \
      ~{if defined(msn_ion) then ("--msn-ion " +  '"' + msn_ion + '"') else ""} \
      ~{if defined(msn_ion_rt) then ("--msn-ion-rt " +  '"' + msn_ion_rt + '"') else ""} \
      ~{if defined(msn_peak_list) then ("--msn-peaklist " +  '"' + msn_peak_list + '"') else ""} \
      ~{if defined(msn_ppm) then ("--msn-ppm " +  '"' + msn_ppm + '"') else ""} \
      ~{if defined(msn_rt_window) then ("--msn-rt-window " +  '"' + msn_rt_window + '"') else ""} \
      ~{if (msn_all_scans) then "--msn-all-scans" else ""} \
      ~{if (require_all_ions) then "--require-all-ions" else ""} \
      ~{if defined(quant_method) then ("--quant-method " +  '"' + quant_method + '"') else ""} \
      ~{if (reporter_ion) then "--reporter-ion" else ""} \
      ~{if defined(iso_topo_logue_limit) then ("--isotopologue-limit " +  '"' + iso_topo_logue_limit + '"') else ""} \
      ~{if (overlapping_labels) then "--overlapping-labels" else ""} \
      ~{if defined(labels_needed) then ("--labels-needed " +  '"' + labels_needed + '"') else ""} \
      ~{if (merge_labels) then "--merge-labels" else ""} \
      ~{if defined(min_scans) then ("--min-scans " +  '"' + min_scans + '"') else ""} \
      ~{if defined(min_resolution) then ("--min-resolution " +  '"' + min_resolution + '"') else ""} \
      ~{if (no_mass_accuracy_correction) then "--no-mass-accuracy-correction" else ""} \
      ~{if (no_contaminant_detection) then "--no-contaminant-detection" else ""} \
      ~{if defined(peak_find_method) then ("--peak-find-method " +  '"' + peak_find_method + '"') else ""} \
      ~{if defined(peak_find_mode) then ("--peak-find-mode " +  '"' + peak_find_mode + '"') else ""} \
      ~{if defined(gap_interpolation) then ("--gap-interpolation " +  '"' + gap_interpolation + '"') else ""} \
      ~{if (fit_baseline) then "--fit-baseline" else ""} \
      ~{if defined(peak_cut_off) then ("--peak-cutoff " +  '"' + peak_cut_off + '"') else ""} \
      ~{if defined(max_peaks) then ("--max-peaks " +  '"' + max_peaks + '"') else ""} \
      ~{if defined(peaks_n) then ("--peaks-n " +  '"' + peaks_n + '"') else ""} \
      ~{if (no_rt_guide) then "--no-rt-guide" else ""} \
      ~{if defined(snr_filter) then ("--snr-filter " +  '"' + snr_filter + '"') else ""} \
      ~{if defined(zscore_filter) then ("--zscore-filter " +  '"' + zscore_filter + '"') else ""} \
      ~{if defined(filter_width) then ("--filter-width " +  '"' + filter_width + '"') else ""} \
      ~{if defined(r_two_cut_off) then ("--r2-cutoff " +  '"' + r_two_cut_off + '"') else ""} \
      ~{if defined(intensity_filter) then ("--intensity-filter " +  '"' + intensity_filter + '"') else ""} \
      ~{if defined(percentile_filter) then ("--percentile-filter " +  '"' + percentile_filter + '"') else ""} \
      ~{if defined(min_peak_separation) then ("--min-peak-separation " +  '"' + min_peak_separation + '"') else ""} \
      ~{if (disable_peak_filtering) then "--disable-peak-filtering" else ""} \
      ~{if (merge_isotopes) then "--merge-isotopes" else ""} \
      ~{if defined(peak_resolution_mode) then ("--peak-resolution-mode " +  '"' + peak_resolution_mode + '"') else ""} \
      ~{if defined(xic_snr) then ("--xic-snr " +  '"' + xic_snr + '"') else ""} \
      ~{if defined(xic_missing_ion_count) then ("--xic-missing-ion-count " +  '"' + xic_missing_ion_count + '"') else ""} \
      ~{if defined(xic_window_size) then ("--xic-window-size " +  '"' + xic_window_size + '"') else ""} \
      ~{if (xic_smooth) then "--xic-smooth" else ""} \
      ~{if (export_msn) then "--export-msn" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (disable_stats) then "--disable-stats" else ""} \
      ~{if (no_ratios) then "--no-ratios" else ""} \
      ~{if (prefix_file_output) then "-o" else ""} \
      ~{if (export_mzm_l) then "--export-mzml" else ""} \
      ~{if defined(export_mode) then ("--export-mode " +  '"' + export_mode + '"') else ""} \
      ~{if (neu_code) then "--neucode" else ""} \
      ~{if (isobaric_tags) then "--isobaric-tags" else ""} \
      ~{if (ms_three) then "--ms3" else ""} \
      ~{if (max_quant) then "--maxquant" else ""} \
      ~{if (gcms) then "--gcms" else ""}
  >>>
  parameter_meta {
    threads_run_default: "Threads to run (default: 1)"
    scan_files_providedassumed: "[SCAN_FILE [SCAN_FILE ...]]\\nThe scan file(s) for the raw data. If not provided,\\nassumed to be in the directory of the\\nprocessed/tabbed/peaklist file. (default: None)"
    scan_file_dir: "The directory containing raw data. (default: None)"
    precision: "The precision for storing m/z values. Defaults to 6\\ndecimal places. (default: 6)"
    precursor_ppm: "The mass accuracy for the first monoisotopic peak in\\nppm. (default: 5)"
    isotope_ppm: "The mass accuracy for the isotopic cluster. (default:\\n2.5)"
    spread: "Assume there is spread of the isotopic label.\\n(default: False)"
    search_file: "A search output or Proteome Discoverer msf file\\n(default: None)"
    skip: "If true, skip scans with missing files in the mapping.\\n(default: False)"
    peptide: "[PEPTIDE [PEPTIDE ...]]\\nThe peptide(s) to limit quantification to. (default:\\nNone)"
    peptide_file: "A file of peptide(s) to limit quantification to.\\n(default: None)"
    scan: "[SCAN [SCAN ...]]\\nThe scan(s) to limit quantification to. (default:\\nNone)"
    mva: "Analyze files in 'missing value' mode. (default:\\nFalse)"
    rt_window: "The maximal deviation of a scan's retention time to be\\nconsidered for analysis. (default: 0.25)"
    label_scheme: "The file corresponding to the labeling scheme\\nutilized. (default: None)"
    label_method: "Predefined labeling schemes to use. (default: None)"
    reference_label: "The label to use as a reference (by default all\\ncomparisons are taken). (default: None)"
    tsv: "A delimited file containing scan information.\\n(default: None)"
    label: "The column indicating the label state of the peptide.\\nIf not found, entry assumed to be light variant.\\n(default: Labeling State)"
    peptide_col: "The column indicating the peptide. (default: Peptide)"
    rt: "The column indicating the retention time. (default:\\nRetention time)"
    mz: "The column indicating the MZ value of the precursor\\nion. This is not the MH+. (default: Light Precursor)"
    scan_col: "The column indicating the scan corresponding to the\\nion. (default: MS2 Spectrum ID)"
    charge: "The column indicating the charge state of the ion.\\n(default: Charge)"
    source: "The column indicating the raw file the scan is\\ncontained in. (default: Raw file)"
    msn_id: "The ms level to search for the ion in. Default: 2\\n(ms2) (default: 2)"
    msn_quant_from: "The ms level to quantify values from. i.e. if we are\\nidentifying an ion in ms2, we can quantify it in ms1\\n(or ms2). Default: msn value-1 (default: None)"
    msn_ion: "M/Z values to search for in the scans. To search for\\nmultiple m/z values for a given ion, separate m/z\\nvalues with a comma. (default: None)"
    msn_ion_rt: "RT values each ion is expected at. (default: None)"
    msn_peak_list: "A file containing peaks to search for in the scans.\\n(default: None)"
    msn_ppm: "The error tolerance for identifying the ion(s).\\n(default: 200)"
    msn_rt_window: "The range of retention times for identifying the\\nion(s). (ex: 7.54-9.43) (default: None)"
    msn_all_scans: "Search for the ion across all scans (ie if you have 3\\nions, you will have 3 results with one long XIC)\\n(default: False)"
    require_all_ions: "If multiple ions are set (in the style of\\n93.15,105.15), all ions must be found in a scan.\\n(default: False)"
    quant_method: "The process to use for quantification. Default:\\nIntegrate for ms1, sum for ms2+. (default: None)"
    reporter_ion: "Indicates that reporter ions are being used. As such,\\nwe only analyze a single scan. (default: False)"
    iso_topo_logue_limit: "How many isotopologues to quantify (default: -1)"
    overlapping_labels: "This declares the mz values of labels will overlap. It\\nis useful for data such as neucode, but not needed for\\nonly SILAC labeling. (default: False)"
    labels_needed: "How many labels need to be detected to quantify a scan\\n(ie if you have a 2 state experiment and set this to\\n2, it will only quantify scans where both occur.\\n(default: 1)"
    merge_labels: "Merge labels together to a single XIC. (default:\\nFalse)"
    min_scans: "How many quantification scans are needed to quantify a\\nscan. (default: 1)"
    min_resolution: "The minimal resolving power of a scan to consider for\\nquantification. Useful for skipping low-res scans\\n(default: 0)"
    no_mass_accuracy_correction: "Disables the mass accuracy correction. (default:\\nFalse)"
    no_contaminant_detection: "Disables routine to check if an ion is a contaminant\\nof a nearby peptide (checks if its a likely\\nisotopologue). (default: False)"
    peak_find_method: "The method to use to identify peaks within data. For\\nLC-MS, relative-max is usually best. For smooth data,\\nderivative is better. (default: relative-max)"
    peak_find_mode: "This picks some predefined parameters for various use\\ncases. Fast is good for robust data with few peaks,\\nslow is good for complex data with overlapping peaks\\nof very different size. (default: average)"
    gap_interpolation: "This interpolates missing data in scans. The parameter\\nshould be a number that is the maximal gap size to\\nfill (ie 2 means a gap of 2 scans). Can be useful for\\nlow intensity LC-MS data. (default: 0)"
    fit_baseline: "Fit a separate line for the baseline of each peak.\\n(default: False)"
    peak_cut_off: "The threshold from the initial retention time a peak\\ncan fall by before being discarded (default: 0.05)"
    max_peaks: "The maximal number of peaks to detect per scan. A\\nlower value can help with very noisy data. (default:\\n-1)"
    peaks_n: "The number of peaks to report per scan. Useful for\\nions with multiple elution times. (default: 1)"
    no_rt_guide: "Do not use the retention time to bias for peaks\\ncontaining the MS trigger time. (default: False)"
    snr_filter: "Filter peaks below a given SNR. (default: 0)"
    zscore_filter: "Peaks below a given z-score are excluded. (default: 0)"
    filter_width: "The window size for snr/zscore filtering. Default:\\nentire scan (default: 0)"
    r_two_cut_off: "The minimal R^2 for a peak to be kept. Should be a\\nvalue between 0 and 1 (default: None)"
    intensity_filter: "Filter peaks whose peak are below a given intensity.\\n(default: 0)"
    percentile_filter: "Filter peaks whose peak are below a given percentile\\nof the data. (default: 0)"
    min_peak_separation: "Peaks separated by less than this distance will be\\ncombined. For very crisp data, set this to a lower\\nnumber. (minimal value is 1) (default: 5)"
    disable_peak_filtering: "This will disable smoothing of data prior to peak\\nfinding. If you have very good LC, this may be used to\\nidentify small peaks. (default: False)"
    merge_isotopes: "Merge Isotopologues together prior to fitting.\\n(default: False)"
    peak_resolution_mode: "The method to use to resolve peaks across multiple\\nXICs (default: common-peak)"
    xic_snr: "When the SNR of the XIC falls below this, stop\\nsearching for more data. Useful for escaping from\\nnoisy shoulders and contaminants. (default: 1.0)"
    xic_missing_ion_count: "This specifies how many consequtive scans an ion can\\nbe missing for until it is no longer considered.\\n(default: 1)"
    xic_window_size: "When the number of scans in a given direction from the\\ninitial datapoint of an XIC passes this, stop. Default\\nis -1 (disabled). Useful for removing contaminants\\n(default: -1)"
    xic_smooth: "Prior to fitting, smooth data with a Gaussian filter.\\n(default: False)"
    export_msn: "This will export spectra of a given MSN that were used\\nto provide the quantification. (default: True)"
    debug: "This will output debug information. (default: False)"
    html: "Output a HTML table summary. (default: False)"
    resume: "Will resume from the last run. Only works if not\\ndirecting output to stdout. (default: False)"
    sample: "How much of the data to sample. Enter as a decimal (ie\\n1.0 for everything, 0.1 for 10%) (default: 1.0)"
    disable_stats: "Disable confidence statistics on data. (default:\\nFalse)"
    no_ratios: "Disable reporting of ratios in output. (default:\\nFalse)"
    prefix_file_output: "[OUT], --out [OUT]\\nThe prefix for the file output (default: None)"
    export_mzm_l: "Create an mzml file of spectra contained within each\\npeak. (default: False)"
    export_mode: "How to export the scans. per-peak: A mzML per peak\\nidentified. per-id: A mzML per ion identified (each\\nrow of the output gets an mzML). per-file: All scans\\nmatched per raw file. (default: per-peak)"
    neu_code: "This will select parameters specific for neucode.\\nNote: You still must define a labeling scheme.\\n(default: False)"
    isobaric_tags: "This will select parameters specific for isobaric tag\\nbased labeling (TMT/iTRAQ). (default: False)"
    ms_three: "This will select parameters specific for ms3 based\\nquantification. (default: False)"
    max_quant: "This will select parameters specific for a MaxQuant\\nevidence file. (default: False)"
    gcms: "This will select parameters specific for ion\\nidentification and quantification in GCMS experiments.\\n(default: False)\\n"
    v_zero_dot_two_dot_four: ""
    var_82: ""
  }
  output {
    File out_stdout = stdout()
    File out_search_file = "${in_search_file}"
    File out_prefix_file_output = "${in_prefix_file_output}"
    File out_export_mode = "${in_export_mode}"
  }
}