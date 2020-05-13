class: CommandLineTool
id: dimspy_replicate_filter.cwl
inputs:
- id: input
  doc: HDF5 file (Peaklist objects) from step 'process-scans' or directory path that
    contains tab-delimited peaklists.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peaklist objects to.
  type: string
  inputBinding:
    prefix: --output
- id: ppm
  doc: Mass tolerance in Parts per million to group peaks across scans / mass spectra.
  type: string
  inputBinding:
    prefix: --ppm
- id: replicates
  doc: Number of technical replicates.
  type: string
  inputBinding:
    prefix: --replicates
- id: min_peak_present
  doc: Minimum number of times a peak has to be present (number) across technical
    replicates.
  type: long
  inputBinding:
    prefix: --min-peak-present
- id: rsd_threshold
  doc: Maximum threshold - Relative Standard Deviation.
  type: string
  inputBinding:
    prefix: --rsd-threshold
- id: file_list
  doc: Tab-delimited file that list all the data files (*.raw or *.mzml) and meta
    data (filename, technical replicate, class, batch).
  type: File
  inputBinding:
    prefix: --filelist
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
- replicate-filter
