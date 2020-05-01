#!/usr/bin/env cwl-runner

baseCommand:
- msconvert
class: CommandLineTool
cwlVersion: v1.0
id: msconvert
inputs:
- doc: ''
  id: file_masks
  inputBinding:
    position: 0
  type: File
- doc: ': encode m/z values in 64-bit precision [default]'
  id: mz64
  inputBinding:
    prefix: --mz64
  type: boolean
- doc: ': encode m/z values in 32-bit precision'
  id: mz32
  inputBinding:
    prefix: --mz32
  type: boolean
- doc: ': encode intensity values in 64-bit precision'
  id: inten64
  inputBinding:
    prefix: --inten64
  type: boolean
- doc: ': encode intensity values in 32-bit precision [default]'
  id: inten32
  inputBinding:
    prefix: --inten32
  type: boolean
- doc: ': do not write index'
  id: no_index
  inputBinding:
    prefix: --noindex
  type: boolean
- doc: '[ --contactInfo ] arg        : filename for contact info'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --zlib ]                   : use zlib compression for binary data'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '[=arg(=2e-09)] : use numpress linear prediction compression for binary mz
    and rt data (relative accuracy loss will not exceed given tolerance arg, unless
    set to 0)'
  id: num_press_linear
  inputBinding:
    prefix: --numpressLinear
  type: boolean
- doc: ': use numpress positive integer compression for binary intensities (absolute
    accuracy loss will not exceed 0.5)'
  id: num_press_pic
  inputBinding:
    prefix: --numpressPic
  type: boolean
- doc: '[=arg(=0.0002)]  : use numpress short logged float compression for binary
    intensities (relative accuracy loss will not exceed given tolerance arg, unless
    set to 0)'
  id: num_press_sl_of
  inputBinding:
    prefix: --numpressSlof
  type: boolean
- doc: '[ --numpressAll ]            : same as --numpressLinear --numpressSlof (see
    https://github.com/fickludd/ms-numpress for more info)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --gzip ]                   : gzip entire output file (adds .gz to filename)'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': add a spectrum list filter'
  id: filter
  inputBinding:
    prefix: --filter
  type: string
- doc: ': create a single output file from multiple input files by merging file-level
    metadata and concatenating spectrum lists'
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: ': write selected ion monitoring as spectra, not chromatograms'
  id: simas_spectra
  inputBinding:
    prefix: --simAsSpectra
  type: boolean
- doc: ': write selected reaction monitoring as spectra, not chromatograms'
  id: srm_as_spectra
  inputBinding:
    prefix: --srmAsSpectra
  type: boolean
- doc: ': write all drift bins/scans in a frame/block as one spectrum instead of individual
    spectra'
  id: combine_ion_mobility_spectra
  inputBinding:
    prefix: --combineIonMobilitySpectra
  type: boolean
- doc: ': some vendor readers have an efficient way of filtering out empty spectra,
    but it takes more time to open the file'
  id: accept_zero_length_spectra
  inputBinding:
    prefix: --acceptZeroLengthSpectra
  type: boolean
- doc: ': if true, if an instrument cannot be determined from a vendor file, it will
    not be an error '
  id: ignore_unknown_instrument_error
  inputBinding:
    prefix: --ignoreUnknownInstrumentError
  type: boolean
