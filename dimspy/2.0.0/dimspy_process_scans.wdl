version 1.0

task DimspyProcessScans {
  input {
    String? directory_tabdelimited_files
    String? hdf_file_save
    File? file_list
    String? function_noise
    String? snr_threshold
    String? ppm
    Int? min_scans
    Int? min_fraction
    String? rsd_threshold
    Boolean? skip_stitching
    String? ringing_threshold
    String? end_scantype__includescanevents
    String? end_scantype__excludescanevents
    String? end__removemzrange
    String? report
    String? block_size
    String? n_cpus
  }
  command <<<
    dimspy process-scans \
      ~{if defined(directory_tabdelimited_files) then ("--input " +  '"' + directory_tabdelimited_files + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(file_list) then ("--filelist " +  '"' + file_list + '"') else ""} \
      ~{if defined(function_noise) then ("--function-noise " +  '"' + function_noise + '"') else ""} \
      ~{if defined(snr_threshold) then ("--snr-threshold " +  '"' + snr_threshold + '"') else ""} \
      ~{if defined(ppm) then ("--ppm " +  '"' + ppm + '"') else ""} \
      ~{if defined(min_scans) then ("--min_scans " +  '"' + min_scans + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if defined(rsd_threshold) then ("--rsd-threshold " +  '"' + rsd_threshold + '"') else ""} \
      ~{true="--skip-stitching" false="" skip_stitching} \
      ~{if defined(ringing_threshold) then ("--ringing-threshold " +  '"' + ringing_threshold + '"') else ""} \
      ~{if defined(end_scantype__includescanevents) then ("-e " +  '"' + end_scantype__includescanevents + '"') else ""} \
      ~{if defined(end_scantype__excludescanevents) then ("-x " +  '"' + end_scantype__excludescanevents + '"') else ""} \
      ~{if defined(end__removemzrange) then ("-z " +  '"' + end__removemzrange + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""}
  >>>
  parameter_meta {
    directory_tabdelimited_files: "Directory (*.raw, *.mzml or tab-delimited peaklist files), single *.mzml/*.raw file or zip archive (*.mzml only)"
    hdf_file_save: "HDF5 file to save the peaklist objects to."
    file_list: "Tab-delimited file that include the name of the data files (*.raw or *.mzml) and meta data. Column names: filename, replicate, batch, injectionOrder, classLabel."
    function_noise: "Select function to calculate noise."
    snr_threshold: "Signal-to-noise threshold"
    ppm: "Mass tolerance in Parts per million to group peaks across scans / mass spectra."
    min_scans: "Minimum number of scans required for each m/z range or event."
    min_fraction: "Minimum fraction a peak has to be present. Use 0.0 to not apply this filter."
    rsd_threshold: "Maximum threshold - relative standard deviation (Calculated for peaks that have been measured across a minimum of two scans)."
    skip_stitching: "Skip the step where (SIM) windows are 'stitched' or 'joined' together. Individual peaklists are generated for each window."
    ringing_threshold: "Ringing"
    end_scantype__includescanevents: "end scan_type, --include-scan-events start end scan_type Scan events to select. E.g. 100.0 200.0 sim or 50.0 1000.0 full"
    end_scantype__excludescanevents: "end scan_type, --exclude-scan-events start end scan_type Scan events to select. E.g. 100.0 200.0 sim or 50.0 1000.0 full"
    end__removemzrange: "end, --remove-mz-range start end M/z range(s) to remove. E.g. 100.0 102.0 or 140.0 145.0."
    report: "Summary/Report of processed mass spectra"
    block_size: "The size of each block of peaks to perform clustering on."
    n_cpus: "Number of central processing units (CPUs)."
  }
}