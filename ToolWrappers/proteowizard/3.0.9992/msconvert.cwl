class: CommandLineTool
id: msconvert.cwl
inputs:
- id: in_arg_specify_text
  doc: '[ --filelist ] arg           : specify text file containing filenames'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_o
  doc: "[ --outdir ] arg (=.)        : set output directory ('-' for stdout) [.]"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_configuration_file
  doc: '[ --config ] arg             : configuration file (optionName=value)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_outfile
  doc: ': Override the name of output file.'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_arg_set_extension
  doc: "[ --ext ] arg                : set extension for output files\n[mzML|mzXML|mgf|txt|mz5]"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_mzm_l
  doc: ': write mzML format [default]'
  type: boolean?
  inputBinding:
    prefix: --mzML
- id: in_mz_xml
  doc: ': write mzXML format'
  type: boolean?
  inputBinding:
    prefix: --mzXML
- id: in_mz_five
  doc: ': write mz5 format'
  type: boolean?
  inputBinding:
    prefix: --mz5
- id: in_mgf
  doc: ': write Mascot generic format'
  type: boolean?
  inputBinding:
    prefix: --mgf
- id: in_text
  doc: ': write ProteoWizard internal text format'
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_ms_one
  doc: ': write MS1 format'
  type: boolean?
  inputBinding:
    prefix: --ms1
- id: in_cms_one
  doc: ': write CMS1 format'
  type: boolean?
  inputBinding:
    prefix: --cms1
- id: in_ms_two
  doc: ': write MS2 format'
  type: boolean?
  inputBinding:
    prefix: --ms2
- id: in_cms_two
  doc: ': write CMS2 format'
  type: boolean?
  inputBinding:
    prefix: --cms2
- id: in_display_detailed_information
  doc: '[ --verbose ]                : display detailed progress information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_set_default_bitprecision
  doc: ": set default binary encoding to 64-bit\nprecision [default]"
  type: boolean?
  inputBinding:
    prefix: --64
- id: in_set_default_bit
  doc: ': set default binary encoding to 32-bit'
  type: boolean?
  inputBinding:
    prefix: --32
- id: in_mz_three_two
  doc: ': encode m/z values in 32-bit precision'
  type: boolean?
  inputBinding:
    prefix: --mz32
- id: in_in_ten_six_four
  doc: ': encode intensity values in 64-bit precision'
  type: boolean?
  inputBinding:
    prefix: --inten64
- id: in_in_ten_three_two
  doc: ": encode intensity values in 32-bit precision\n[default]"
  type: boolean?
  inputBinding:
    prefix: --inten32
- id: in_no_index
  doc: ': do not write index'
  type: boolean?
  inputBinding:
    prefix: --noindex
- id: in_arg_filename_contact
  doc: '[ --contactInfo ] arg        : filename for contact info'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_use_zlib_compression
  doc: '[ --zlib ]                   : use zlib compression for binary data'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_num_press_linear
  doc: "[=arg(=2e-09)] : use numpress linear prediction compression\nfor binary mz\
    \ and rt data (relative accuracy\nloss will not exceed given tolerance arg,\n\
    unless set to 0)"
  type: boolean?
  inputBinding:
    prefix: --numpressLinear
- id: in_num_press_pic
  doc: ": use numpress positive integer compression\nfor binary intensities (absolute\
    \ accuracy\nloss will not exceed 0.5)"
  type: boolean?
  inputBinding:
    prefix: --numpressPic
- id: in_num_press_sl_of
  doc: "[=arg(=0.0002)]  : use numpress short logged float compression\nfor binary\
    \ intensities (relative accuracy\nloss will not exceed given tolerance arg,\n\
    unless set to 0)"
  type: boolean?
  inputBinding:
    prefix: --numpressSlof
- id: in_same_numpresslinear_
  doc: "[ --numpressAll ]            : same as --numpressLinear --numpressSlof\n(see\
    \ https://github.com/fickludd/ms-numpress\nfor more info)"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_gzip_entire_file
  doc: "[ --gzip ]                   : gzip entire output file (adds .gz to\nfilename)"
  type: File?
  inputBinding:
    prefix: -g
- id: in_filter
  doc: ': add a spectrum list filter'
  type: string?
  inputBinding:
    prefix: --filter
- id: in_merge
  doc: ": create a single output file from multiple\ninput files by merging file-level\
    \ metadata\nand concatenating spectrum lists"
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_simas_spectra
  doc: ": write selected ion monitoring as spectra,\nnot chromatograms"
  type: boolean?
  inputBinding:
    prefix: --simAsSpectra
- id: in_srm_as_spectra
  doc: ": write selected reaction monitoring as\nspectra, not chromatograms"
  type: boolean?
  inputBinding:
    prefix: --srmAsSpectra
- id: in_combine_ion_mobility_spectra
  doc: ": write all drift bins/scans in a frame/block\nas one spectrum instead of\
    \ individual spectra"
  type: boolean?
  inputBinding:
    prefix: --combineIonMobilitySpectra
- id: in_accept_zero_length_spectra
  doc: ": some vendor readers have an efficient way\nof filtering out empty spectra,\
    \ but it takes\nmore time to open the file"
  type: File?
  inputBinding:
    prefix: --acceptZeroLengthSpectra
- id: in_ignore_unknown_instrument_error
  doc: ": if true, if an instrument cannot be\ndetermined from a vendor file, it will\
    \ not be\nan error"
  type: boolean?
  inputBinding:
    prefix: --ignoreUnknownInstrumentError
- id: in_precision
  doc: '--mz64                          : encode m/z values in 64-bit precision '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: "[ --outdir ] arg (=.)        : set output directory ('-' for stdout) [.]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_o)
- id: out_outfile
  doc: ': Override the name of output file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_gzip_entire_file
  doc: "[ --gzip ]                   : gzip entire output file (adds .gz to\nfilename)"
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip_entire_file)
- id: out_accept_zero_length_spectra
  doc: ": some vendor readers have an efficient way\nof filtering out empty spectra,\
    \ but it takes\nmore time to open the file"
  type: File?
  outputBinding:
    glob: $(inputs.in_accept_zero_length_spectra)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- msconvert
