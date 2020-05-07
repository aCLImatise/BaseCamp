class: CommandLineTool
id: dimspy_align_samples.cwl
inputs:
- id: input
  doc: HDF5 file (Peaklist objects) from step 'process-scans / replicate-filter' or
    directory path that contains tab-delimited peaklists.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peak matrix object to.
  type: string
  inputBinding:
    prefix: --output
- id: ppm
  doc: Mass tolerance in parts per million to group peaks across scans / mass spectra.
  type: string
  inputBinding:
    prefix: --ppm
- id: file_list
  doc: 'Tab-delimited file that include the name of the samples and meta data.Column
    names: filename, replicate, batch, injectionOrder, classLabel.'
  type: File
  inputBinding:
    prefix: --filelist
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
- align-samples
