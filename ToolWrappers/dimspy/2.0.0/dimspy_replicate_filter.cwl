class: CommandLineTool
id: dimspy_replicate_filter.cwl
inputs:
- id: in_input
  doc: "HDF5 file (Peaklist objects) from step 'process-scans'\nor directory path\
    \ that contains tab-delimited\npeaklists."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: HDF5 file to save the peaklist objects to.
  type: File
  inputBinding:
    prefix: --output
- id: in_ppm
  doc: "Mass tolerance in Parts per million to group peaks\nacross scans / mass spectra."
  type: string
  inputBinding:
    prefix: --ppm
- id: in_replicates
  doc: Number of technical replicates.
  type: long
  inputBinding:
    prefix: --replicates
- id: in_min_peak_present
  doc: "Minimum number of times a peak has to be present\n(number) across technical\
    \ replicates."
  type: long
  inputBinding:
    prefix: --min-peak-present
- id: in_rsd_threshold
  doc: Maximum threshold - Relative Standard Deviation.
  type: string
  inputBinding:
    prefix: --rsd-threshold
- id: in_file_list
  doc: "Tab-delimited file that list all the data files (*.raw\nor *.mzml) and meta\
    \ data (filename, technical\nreplicate, class, batch)."
  type: File
  inputBinding:
    prefix: --filelist
- id: in_report
  doc: Summary/Report of processed mass spectra
  type: string
  inputBinding:
    prefix: --report
- id: in_block_size
  doc: "The size of each block of peaks to perform clustering\non."
  type: long
  inputBinding:
    prefix: --block-size
- id: in_n_cpus
  doc: "Number of central processing units (CPUs).\n"
  type: long
  inputBinding:
    prefix: --ncpus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- replicate-filter
