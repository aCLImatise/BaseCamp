version 1.0

task Msconvert {
  input {
    Boolean? arg_specify_text
    Boolean? o
    Boolean? arg_configuration_file
    String? outfile
    Boolean? e
    Boolean? mzm_l
    Boolean? mz_xml
    Boolean? mz_five
    Boolean? mgf
    Boolean? text
    Boolean? ms_one
    Boolean? cms_one
    Boolean? ms_two
    Boolean? cms_two
    Boolean? display_detailed_information
    Boolean? six_four
    Boolean? three_two
    Boolean? mz_six_four
    Boolean? mz_three_two
    Boolean? in_ten_six_four
    Boolean? in_ten_three_two
    Boolean? no_index
    Boolean? arg_filename_contact
    Boolean? use_zlib_compression
    Boolean? num_press_linear
    Boolean? num_press_pic
    Boolean? num_press_sl_of
    Boolean? same__numpresslinear
    Boolean? gzip_entire_output
    String? filter
    Boolean? merge
    Boolean? simas_spectra
    Boolean? srm_as_spectra
    Boolean? combine_ion_mobility_spectra
    Boolean? accept_zero_length_spectra
    Boolean? ignore_unknown_instrument_error
    File? file_masks
  }
  command <<<
    msconvert \
      ~{file_masks} \
      ~{true="-f" false="" arg_specify_text} \
      ~{true="-o" false="" o} \
      ~{true="-c" false="" arg_configuration_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="-e" false="" e} \
      ~{true="--mzML" false="" mzm_l} \
      ~{true="--mzXML" false="" mz_xml} \
      ~{true="--mz5" false="" mz_five} \
      ~{true="--mgf" false="" mgf} \
      ~{true="--text" false="" text} \
      ~{true="--ms1" false="" ms_one} \
      ~{true="--cms1" false="" cms_one} \
      ~{true="--ms2" false="" ms_two} \
      ~{true="--cms2" false="" cms_two} \
      ~{true="-v" false="" display_detailed_information} \
      ~{true="--64" false="" six_four} \
      ~{true="--32" false="" three_two} \
      ~{true="--mz64" false="" mz_six_four} \
      ~{true="--mz32" false="" mz_three_two} \
      ~{true="--inten64" false="" in_ten_six_four} \
      ~{true="--inten32" false="" in_ten_three_two} \
      ~{true="--noindex" false="" no_index} \
      ~{true="-i" false="" arg_filename_contact} \
      ~{true="-z" false="" use_zlib_compression} \
      ~{true="--numpressLinear" false="" num_press_linear} \
      ~{true="--numpressPic" false="" num_press_pic} \
      ~{true="--numpressSlof" false="" num_press_sl_of} \
      ~{true="-n" false="" same__numpresslinear} \
      ~{true="-g" false="" gzip_entire_output} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--merge" false="" merge} \
      ~{true="--simAsSpectra" false="" simas_spectra} \
      ~{true="--srmAsSpectra" false="" srm_as_spectra} \
      ~{true="--combineIonMobilitySpectra" false="" combine_ion_mobility_spectra} \
      ~{true="--acceptZeroLengthSpectra" false="" accept_zero_length_spectra} \
      ~{true="--ignoreUnknownInstrumentError" false="" ignore_unknown_instrument_error}
  >>>
  parameter_meta {
    arg_specify_text: "[ --filelist ] arg           : specify text file containing filenames"
    o: "[ --outdir ] arg (=.)        : set output directory ('-' for stdout) [.]"
    arg_configuration_file: "[ --config ] arg             : configuration file (optionName=value)"
    outfile: ": Override the name of output file."
    e: "[ --ext ] arg                : set extension for output files [mzML|mzXML|mgf|txt|mz5]"
    mzm_l: ": write mzML format [default]"
    mz_xml: ": write mzXML format"
    mz_five: ": write mz5 format"
    mgf: ": write Mascot generic format"
    text: ": write ProteoWizard internal text format"
    ms_one: ": write MS1 format"
    cms_one: ": write CMS1 format"
    ms_two: ": write MS2 format"
    cms_two: ": write CMS2 format"
    display_detailed_information: "[ --verbose ]                : display detailed progress information"
    six_four: ": set default binary encoding to 64-bit precision [default]"
    three_two: ": set default binary encoding to 32-bit precision"
    mz_six_four: ": encode m/z values in 64-bit precision [default]"
    mz_three_two: ": encode m/z values in 32-bit precision"
    in_ten_six_four: ": encode intensity values in 64-bit precision"
    in_ten_three_two: ": encode intensity values in 32-bit precision [default]"
    no_index: ": do not write index"
    arg_filename_contact: "[ --contactInfo ] arg        : filename for contact info"
    use_zlib_compression: "[ --zlib ]                   : use zlib compression for binary data"
    num_press_linear: "[=arg(=2e-09)] : use numpress linear prediction compression for binary mz and rt data (relative accuracy loss will not exceed given tolerance arg, unless set to 0)"
    num_press_pic: ": use numpress positive integer compression for binary intensities (absolute accuracy loss will not exceed 0.5)"
    num_press_sl_of: "[=arg(=0.0002)]  : use numpress short logged float compression for binary intensities (relative accuracy loss will not exceed given tolerance arg, unless set to 0)"
    same__numpresslinear: "[ --numpressAll ]            : same as --numpressLinear --numpressSlof (see https://github.com/fickludd/ms-numpress for more info)"
    gzip_entire_output: "[ --gzip ]                   : gzip entire output file (adds .gz to filename)"
    filter: ": add a spectrum list filter"
    merge: ": create a single output file from multiple input files by merging file-level metadata and concatenating spectrum lists"
    simas_spectra: ": write selected ion monitoring as spectra, not chromatograms"
    srm_as_spectra: ": write selected reaction monitoring as spectra, not chromatograms"
    combine_ion_mobility_spectra: ": write all drift bins/scans in a frame/block as one spectrum instead of individual spectra"
    accept_zero_length_spectra: ": some vendor readers have an efficient way of filtering out empty spectra, but it takes more time to open the file"
    ignore_unknown_instrument_error: ": if true, if an instrument cannot be determined from a vendor file, it will not be an error "
    file_masks: ""
  }
}