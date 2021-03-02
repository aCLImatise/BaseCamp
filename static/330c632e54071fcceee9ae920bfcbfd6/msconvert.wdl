version 1.0

task Msconvert {
  input {
    Boolean? arg_specify_text
    Directory? o
    Boolean? arg_configuration_file
    File? outfile
    Boolean? arg_set_extension
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
    Boolean? set_default_bitprecision
    Boolean? set_default_bit
    Boolean? mz_three_two
    Boolean? in_ten_six_four
    Boolean? in_ten_three_two
    Boolean? no_index
    Boolean? arg_filename_contact
    Boolean? use_zlib_compression
    Boolean? num_press_linear
    Boolean? num_press_pic
    Boolean? num_press_sl_of
    Boolean? same_numpresslinear_
    File? gzip_entire_file
    String? filter
    Boolean? merge
    Boolean? simas_spectra
    Boolean? srm_as_spectra
    Boolean? combine_ion_mobility_spectra
    File? accept_zero_length_spectra
    Boolean? ignore_unknown_instrument_error
    String precision
  }
  command <<<
    msconvert \
      ~{precision} \
      ~{if (arg_specify_text) then "-f" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (arg_configuration_file) then "-c" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (arg_set_extension) then "-e" else ""} \
      ~{if (mzm_l) then "--mzML" else ""} \
      ~{if (mz_xml) then "--mzXML" else ""} \
      ~{if (mz_five) then "--mz5" else ""} \
      ~{if (mgf) then "--mgf" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (ms_one) then "--ms1" else ""} \
      ~{if (cms_one) then "--cms1" else ""} \
      ~{if (ms_two) then "--ms2" else ""} \
      ~{if (cms_two) then "--cms2" else ""} \
      ~{if (display_detailed_information) then "-v" else ""} \
      ~{if (set_default_bitprecision) then "--64" else ""} \
      ~{if (set_default_bit) then "--32" else ""} \
      ~{if (mz_three_two) then "--mz32" else ""} \
      ~{if (in_ten_six_four) then "--inten64" else ""} \
      ~{if (in_ten_three_two) then "--inten32" else ""} \
      ~{if (no_index) then "--noindex" else ""} \
      ~{if (arg_filename_contact) then "-i" else ""} \
      ~{if (use_zlib_compression) then "-z" else ""} \
      ~{if (num_press_linear) then "--numpressLinear" else ""} \
      ~{if (num_press_pic) then "--numpressPic" else ""} \
      ~{if (num_press_sl_of) then "--numpressSlof" else ""} \
      ~{if (same_numpresslinear_) then "-n" else ""} \
      ~{if (gzip_entire_file) then "-g" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (simas_spectra) then "--simAsSpectra" else ""} \
      ~{if (srm_as_spectra) then "--srmAsSpectra" else ""} \
      ~{if (combine_ion_mobility_spectra) then "--combineIonMobilitySpectra" else ""} \
      ~{if (accept_zero_length_spectra) then "--acceptZeroLengthSpectra" else ""} \
      ~{if (ignore_unknown_instrument_error) then "--ignoreUnknownInstrumentError" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_specify_text: "[ --filelist ] arg           : specify text file containing filenames"
    o: "[ --outdir ] arg (=.)        : set output directory ('-' for stdout) [.]"
    arg_configuration_file: "[ --config ] arg             : configuration file (optionName=value)"
    outfile: ": Override the name of output file."
    arg_set_extension: "[ --ext ] arg                : set extension for output files\\n[mzML|mzXML|mgf|txt|mz5]"
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
    set_default_bitprecision: ": set default binary encoding to 64-bit\\nprecision [default]"
    set_default_bit: ": set default binary encoding to 32-bit"
    mz_three_two: ": encode m/z values in 32-bit precision"
    in_ten_six_four: ": encode intensity values in 64-bit precision"
    in_ten_three_two: ": encode intensity values in 32-bit precision\\n[default]"
    no_index: ": do not write index"
    arg_filename_contact: "[ --contactInfo ] arg        : filename for contact info"
    use_zlib_compression: "[ --zlib ]                   : use zlib compression for binary data"
    num_press_linear: "[=arg(=2e-09)] : use numpress linear prediction compression\\nfor binary mz and rt data (relative accuracy\\nloss will not exceed given tolerance arg,\\nunless set to 0)"
    num_press_pic: ": use numpress positive integer compression\\nfor binary intensities (absolute accuracy\\nloss will not exceed 0.5)"
    num_press_sl_of: "[=arg(=0.0002)]  : use numpress short logged float compression\\nfor binary intensities (relative accuracy\\nloss will not exceed given tolerance arg,\\nunless set to 0)"
    same_numpresslinear_: "[ --numpressAll ]            : same as --numpressLinear --numpressSlof\\n(see https://github.com/fickludd/ms-numpress\\nfor more info)"
    gzip_entire_file: "[ --gzip ]                   : gzip entire output file (adds .gz to\\nfilename)"
    filter: ": add a spectrum list filter"
    merge: ": create a single output file from multiple\\ninput files by merging file-level metadata\\nand concatenating spectrum lists"
    simas_spectra: ": write selected ion monitoring as spectra,\\nnot chromatograms"
    srm_as_spectra: ": write selected reaction monitoring as\\nspectra, not chromatograms"
    combine_ion_mobility_spectra: ": write all drift bins/scans in a frame/block\\nas one spectrum instead of individual spectra"
    accept_zero_length_spectra: ": some vendor readers have an efficient way\\nof filtering out empty spectra, but it takes\\nmore time to open the file"
    ignore_unknown_instrument_error: ": if true, if an instrument cannot be\\ndetermined from a vendor file, it will not be\\nan error"
    precision: "--mz64                          : encode m/z values in 64-bit precision "
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
    File out_outfile = "${in_outfile}"
    File out_gzip_entire_file = "${in_gzip_entire_file}"
    File out_accept_zero_length_spectra = "${in_accept_zero_length_spectra}"
  }
}