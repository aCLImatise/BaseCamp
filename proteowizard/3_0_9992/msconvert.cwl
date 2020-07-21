class: CommandLineTool
id: ../../../msconvert.cwl
inputs:
- id: arg_specify_text
  doc: '[ --filelist ] arg           : specify text file containing filenames'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: "[ --outdir ] arg (=.)        : set output directory ('-' for stdout) [.]"
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_configuration_file
  doc: '[ --config ] arg             : configuration file (optionName=value)'
  type: boolean
  inputBinding:
    prefix: -c
- id: outfile
  doc: ': Override the name of output file.'
  type: string
  inputBinding:
    prefix: --outfile
- id: e
  doc: '[ --ext ] arg                : set extension for output files [mzML|mzXML|mgf|txt|mz5]'
  type: boolean
  inputBinding:
    prefix: -e
- id: mzm_l
  doc: ': write mzML format [default]'
  type: boolean
  inputBinding:
    prefix: --mzML
- id: mz_xml
  doc: ': write mzXML format'
  type: boolean
  inputBinding:
    prefix: --mzXML
- id: mz_five
  doc: ': write mz5 format'
  type: boolean
  inputBinding:
    prefix: --mz5
- id: mgf
  doc: ': write Mascot generic format'
  type: boolean
  inputBinding:
    prefix: --mgf
- id: text
  doc: ': write ProteoWizard internal text format'
  type: boolean
  inputBinding:
    prefix: --text
- id: ms_one
  doc: ': write MS1 format'
  type: boolean
  inputBinding:
    prefix: --ms1
- id: cms_one
  doc: ': write CMS1 format'
  type: boolean
  inputBinding:
    prefix: --cms1
- id: ms_two
  doc: ': write MS2 format'
  type: boolean
  inputBinding:
    prefix: --ms2
- id: cms_two
  doc: ': write CMS2 format'
  type: boolean
  inputBinding:
    prefix: --cms2
- id: display_detailed_information
  doc: '[ --verbose ]                : display detailed progress information'
  type: boolean
  inputBinding:
    prefix: -v
- id: six_four
  doc: ': set default binary encoding to 64-bit precision [default]'
  type: boolean
  inputBinding:
    prefix: --64
- id: three_two
  doc: ': set default binary encoding to 32-bit precision'
  type: boolean
  inputBinding:
    prefix: --32
- id: mz_six_four
  doc: ': encode m/z values in 64-bit precision [default]'
  type: boolean
  inputBinding:
    prefix: --mz64
- id: mz_three_two
  doc: ': encode m/z values in 32-bit precision'
  type: boolean
  inputBinding:
    prefix: --mz32
- id: in_ten_six_four
  doc: ': encode intensity values in 64-bit precision'
  type: boolean
  inputBinding:
    prefix: --inten64
- id: in_ten_three_two
  doc: ': encode intensity values in 32-bit precision [default]'
  type: boolean
  inputBinding:
    prefix: --inten32
- id: no_index
  doc: ': do not write index'
  type: boolean
  inputBinding:
    prefix: --noindex
- id: arg_filename_contact
  doc: '[ --contactInfo ] arg        : filename for contact info'
  type: boolean
  inputBinding:
    prefix: -i
- id: use_zlib_compression
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
- id: same__numpresslinear
  doc: '[ --numpressAll ]            : same as --numpressLinear --numpressSlof (see
    https://github.com/fickludd/ms-numpress for more info)'
  type: boolean
  inputBinding:
    prefix: -n
- id: gzip_entire_output
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
- id: file_masks
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- msconvert
