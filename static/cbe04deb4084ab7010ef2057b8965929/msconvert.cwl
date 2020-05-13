class: CommandLineTool
id: msconvert.cwl
inputs:
- id: file_masks
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: mz64
  doc: ': encode m/z values in 64-bit precision [default]'
  type: boolean
  inputBinding:
    prefix: --mz64
- id: mz32
  doc: ': encode m/z values in 32-bit precision'
  type: boolean
  inputBinding:
    prefix: --mz32
- id: inten64
  doc: ': encode intensity values in 64-bit precision'
  type: boolean
  inputBinding:
    prefix: --inten64
- id: inten32
  doc: ': encode intensity values in 32-bit precision [default]'
  type: boolean
  inputBinding:
    prefix: --inten32
- id: no_index
  doc: ': do not write index'
  type: boolean
  inputBinding:
    prefix: --noindex
- id: i
  doc: '[ --contactInfo ] arg        : filename for contact info'
  type: boolean
  inputBinding:
    prefix: -i
- id: z
  doc: '[ --zlib ]                   : use zlib compression for binary data'
  type: boolean
  inputBinding:
    prefix: -z
- id: num_press_linear
  doc: '[=arg(=2e-09)] : use numpress linear prediction compression for binary mz
    and rt data (relative accuracy loss will not exceed given tolerance arg, unless
    set to 0)'
  type: boolean
  inputBinding:
    prefix: --numpressLinear
- id: num_press_pic
  doc: ': use numpress positive integer compression for binary intensities (absolute
    accuracy loss will not exceed 0.5)'
  type: boolean
  inputBinding:
    prefix: --numpressPic
- id: num_press_sl_of
  doc: '[=arg(=0.0002)]  : use numpress short logged float compression for binary
    intensities (relative accuracy loss will not exceed given tolerance arg, unless
    set to 0)'
  type: boolean
  inputBinding:
    prefix: --numpressSlof
- id: n
  doc: '[ --numpressAll ]            : same as --numpressLinear --numpressSlof (see
    https://github.com/fickludd/ms-numpress for more info)'
  type: boolean
  inputBinding:
    prefix: -n
- id: g
  doc: '[ --gzip ]                   : gzip entire output file (adds .gz to filename)'
  type: boolean
  inputBinding:
    prefix: -g
- id: filter
  doc: ': add a spectrum list filter'
  type: string
  inputBinding:
    prefix: --filter
- id: merge
  doc: ': create a single output file from multiple input files by merging file-level
    metadata and concatenating spectrum lists'
  type: boolean
  inputBinding:
    prefix: --merge
- id: simas_spectra
  doc: ': write selected ion monitoring as spectra, not chromatograms'
  type: boolean
  inputBinding:
    prefix: --simAsSpectra
- id: srm_as_spectra
  doc: ': write selected reaction monitoring as spectra, not chromatograms'
  type: boolean
  inputBinding:
    prefix: --srmAsSpectra
- id: combine_ion_mobility_spectra
  doc: ': write all drift bins/scans in a frame/block as one spectrum instead of individual
    spectra'
  type: boolean
  inputBinding:
    prefix: --combineIonMobilitySpectra
- id: accept_zero_length_spectra
  doc: ': some vendor readers have an efficient way of filtering out empty spectra,
    but it takes more time to open the file'
  type: boolean
  inputBinding:
    prefix: --acceptZeroLengthSpectra
- id: ignore_unknown_instrument_error
  doc: ': if true, if an instrument cannot be determined from a vendor file, it will
    not be an error '
  type: boolean
  inputBinding:
    prefix: --ignoreUnknownInstrumentError
outputs: []
cwlVersion: v1.1
baseCommand:
- msconvert
