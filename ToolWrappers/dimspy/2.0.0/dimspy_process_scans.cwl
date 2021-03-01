class: CommandLineTool
id: dimspy_process_scans.cwl
inputs:
- id: in_input
  doc: "Directory (*.raw, *.mzml or tab-delimited peaklist\nfiles), single *.mzml/*.raw\
    \ file or zip archive\n(*.mzml only)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: HDF5 file to save the peaklist objects to.
  type: File?
  inputBinding:
    prefix: --output
- id: in_file_list
  doc: "Tab-delimited file that include the name of the data\nfiles (*.raw or *.mzml)\
    \ and meta data. Column names:\nfilename, replicate, batch, injectionOrder,\n\
    classLabel."
  type: File?
  inputBinding:
    prefix: --filelist
- id: in_function_noise
  doc: Select function to calculate noise.
  type: string?
  inputBinding:
    prefix: --function-noise
- id: in_snr_threshold
  doc: Signal-to-noise threshold
  type: string?
  inputBinding:
    prefix: --snr-threshold
- id: in_ppm
  doc: "Mass tolerance in Parts per million to group peaks\nacross scans / mass spectra."
  type: string?
  inputBinding:
    prefix: --ppm
- id: in_min_scans
  doc: "Minimum number of scans required for each m/z range or\nevent."
  type: long?
  inputBinding:
    prefix: --min_scans
- id: in_min_fraction
  doc: "Minimum fraction a peak has to be present. Use 0.0 to\nnot apply this filter."
  type: long?
  inputBinding:
    prefix: --min-fraction
- id: in_rsd_threshold
  doc: "Maximum threshold - relative standard deviation\n(Calculated for peaks that\
    \ have been measured across a\nminimum of two scans)."
  type: string?
  inputBinding:
    prefix: --rsd-threshold
- id: in_skip_stitching
  doc: "Skip the step where (SIM) windows are 'stitched' or\n'joined' together. Individual\
    \ peaklists are generated\nfor each window."
  type: boolean?
  inputBinding:
    prefix: --skip-stitching
- id: in_end_scantype_
  doc: "end scan_type, --exclude-scan-events start end scan_type\nScan events to select.\
    \ E.g. 100.0 200.0 sim or 50.0\n1000.0 full"
  type: double?
  inputBinding:
    prefix: -x
- id: in_end__removemzrange
  doc: "end, --remove-mz-range start end\nM/z range(s) to remove. E.g. 100.0 102.0\
    \ or 140.0\n145.0."
  type: double?
  inputBinding:
    prefix: -z
- id: in_report
  doc: Summary/Report of processed mass spectra
  type: string?
  inputBinding:
    prefix: --report
- id: in_block_size
  doc: "The size of each block of peaks to perform clustering\non."
  type: long?
  inputBinding:
    prefix: --block-size
- id: in_n_cpus
  doc: "Number of central processing units (CPUs).\n"
  type: long?
  inputBinding:
    prefix: --ncpus
- id: in_ringing
  doc: -e start end scan_type, --include-scan-events start end scan_type
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dimspy
- process-scans
