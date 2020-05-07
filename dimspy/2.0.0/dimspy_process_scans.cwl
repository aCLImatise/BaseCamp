class: CommandLineTool
id: dimspy_process_scans.cwl
inputs:
- id: input
  doc: Directory (*.raw, *.mzml or tab-delimited peaklist files), single *.mzml/*.raw
    file or zip archive (*.mzml only)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peaklist objects to.
  type: string
  inputBinding:
    prefix: --output
- id: file_list
  doc: 'Tab-delimited file that include the name of the data files (*.raw or *.mzml)
    and meta data. Column names: filename, replicate, batch, injectionOrder, classLabel.'
  type: File
  inputBinding:
    prefix: --filelist
- id: function_noise
  doc: Select function to calculate noise.
  type: string
  inputBinding:
    prefix: --function-noise
- id: snr_threshold
  doc: Signal-to-noise threshold
  type: string
  inputBinding:
    prefix: --snr-threshold
- id: ppm
  doc: Mass tolerance in Parts per million to group peaks across scans / mass spectra.
  type: string
  inputBinding:
    prefix: --ppm
- id: min_scans
  doc: Minimum number of scans required for each m/z range or event.
  type: long
  inputBinding:
    prefix: --min_scans
- id: min_fraction
  doc: Minimum fraction a peak has to be present. Use 0.0 to not apply this filter.
  type: long
  inputBinding:
    prefix: --min-fraction
- id: rsd_threshold
  doc: Maximum threshold - relative standard deviation (Calculated for peaks that
    have been measured across a minimum of two scans).
  type: string
  inputBinding:
    prefix: --rsd-threshold
- id: skip_stitching
  doc: Skip the step where (SIM) windows are 'stitched' or 'joined' together. Individual
    peaklists are generated for each window.
  type: boolean
  inputBinding:
    prefix: --skip-stitching
- id: ringing_threshold
  doc: Ringing
  type: string
  inputBinding:
    prefix: --ringing-threshold
- id: e
  doc: end scan_type, --include-scan-events start end scan_type Scan events to select.
    E.g. 100.0 200.0 sim or 50.0 1000.0 full
  type: string
  inputBinding:
    prefix: -e
- id: x
  doc: end scan_type, --exclude-scan-events start end scan_type Scan events to select.
    E.g. 100.0 200.0 sim or 50.0 1000.0 full
  type: string
  inputBinding:
    prefix: -x
- id: z
  doc: end, --remove-mz-range start end M/z range(s) to remove. E.g. 100.0 102.0 or
    140.0 145.0.
  type: string
  inputBinding:
    prefix: -z
- id: report
  doc: Summary/Report of processed mass spectra
  type: string
  inputBinding:
    prefix: --report
- id: block_size
  doc: The size of each block of peaks to perform clustering on.
  type: string
  inputBinding:
    prefix: --block-size
- id: n_cpus
  doc: Number of central processing units (CPUs).
  type: string
  inputBinding:
    prefix: --ncpus
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- process-scans
