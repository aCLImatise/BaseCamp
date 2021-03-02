version 1.0

task DimspyProcessscans {
  input {
    File? directory_mzml_tabdelimited
    File? hdf_file_save
    File? file_list
    String? function_noise
    String? snr_threshold
    String? ppm
    Int? min_scans
    Int? min_fraction
    String? rsd_threshold
    Boolean? skip_stitching
    Float? end_scantype_
    Float? end__removemzrange
    String? report
    Int? block_size
    Int? n_cpus
    String ringing
  }
  command <<<
    dimspy process_scans \
      ~{ringing} \
      ~{if defined(directory_mzml_tabdelimited) then ("--input " +  '"' + directory_mzml_tabdelimited + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(file_list) then ("--filelist " +  '"' + file_list + '"') else ""} \
      ~{if defined(function_noise) then ("--function-noise " +  '"' + function_noise + '"') else ""} \
      ~{if defined(snr_threshold) then ("--snr-threshold " +  '"' + snr_threshold + '"') else ""} \
      ~{if defined(ppm) then ("--ppm " +  '"' + ppm + '"') else ""} \
      ~{if defined(min_scans) then ("--min_scans " +  '"' + min_scans + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if defined(rsd_threshold) then ("--rsd-threshold " +  '"' + rsd_threshold + '"') else ""} \
      ~{if (skip_stitching) then "--skip-stitching" else ""} \
      ~{if defined(end_scantype_) then ("-x " +  '"' + end_scantype_ + '"') else ""} \
      ~{if defined(end__removemzrange) then ("-z " +  '"' + end__removemzrange + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_mzml_tabdelimited: "Directory (*.raw, *.mzml or tab-delimited peaklist\\nfiles), single *.mzml/*.raw file or zip archive\\n(*.mzml only)"
    hdf_file_save: "HDF5 file to save the peaklist objects to."
    file_list: "Tab-delimited file that include the name of the data\\nfiles (*.raw or *.mzml) and meta data. Column names:\\nfilename, replicate, batch, injectionOrder,\\nclassLabel."
    function_noise: "Select function to calculate noise."
    snr_threshold: "Signal-to-noise threshold"
    ppm: "Mass tolerance in Parts per million to group peaks\\nacross scans / mass spectra."
    min_scans: "Minimum number of scans required for each m/z range or\\nevent."
    min_fraction: "Minimum fraction a peak has to be present. Use 0.0 to\\nnot apply this filter."
    rsd_threshold: "Maximum threshold - relative standard deviation\\n(Calculated for peaks that have been measured across a\\nminimum of two scans)."
    skip_stitching: "Skip the step where (SIM) windows are 'stitched' or\\n'joined' together. Individual peaklists are generated\\nfor each window."
    end_scantype_: "end scan_type, --exclude-scan-events start end scan_type\\nScan events to select. E.g. 100.0 200.0 sim or 50.0\\n1000.0 full"
    end__removemzrange: "end, --remove-mz-range start end\\nM/z range(s) to remove. E.g. 100.0 102.0 or 140.0\\n145.0."
    report: "Summary/Report of processed mass spectra"
    block_size: "The size of each block of peaks to perform clustering\\non."
    n_cpus: "Number of central processing units (CPUs).\\n"
    ringing: "-e start end scan_type, --include-scan-events start end scan_type"
  }
  output {
    File out_stdout = stdout()
  }
}