class: CommandLineTool
id: spectrast_create.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_spectrum_files
  doc: Paths to raw spectrum files. These should be provided in a comma separated
    list
  type: string
  inputBinding:
    prefix: --spectrum-files
- id: in_binary_output
  doc: Produce spectral libraries in binary format rather than ASCII [false]
  type: boolean
  inputBinding:
    prefix: --binary-output
- id: in_predicate
  doc: Keep only spectra satifying predicate pred. Should be a C-style predicate
  type: string
  inputBinding:
    prefix: --predicate
- id: in_p_thresh
  doc: Probability threshold below which spectra are discarded [0.99]
  type: double
  inputBinding:
    prefix: --p-thresh
- id: in_instrument_acquisition
  doc: "Set the instrument and acquisition settings of the spectra (in case not specified\
    \ in data files).\nExamples: CID, ETD, CID-QTOF, HCD. The latter two are treated\
    \ as high-mass accuracy spectra. [CID]\n"
  type: string
  inputBinding:
    prefix: --instrument-acquisition
- id: in_file_one_dot_pep_dot_xml
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- spectrast_create.rb
