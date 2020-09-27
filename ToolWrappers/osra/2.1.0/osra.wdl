version 1.0

task Osra {
  input {
    Boolean? learn
    File? _write_filenamewrite
    File? preview
    Boolean? dimensions_size_dimensions
    File? _output_filename
    Boolean? _verbosebe_verbose
    Boolean? _debugprint_information
    File? _superatom_configfilesuperatom
    File? _spelling_correction
    Boolean? _bondshow_average
    Boolean? _coordinatesshow_surrounding
    Boolean? _pageshow_page
    Boolean? _guessprint_resolution
    Boolean? _printprint_estimate
    String? embedded_format
    String? _format_cansmisdfoutput
    Boolean? _adaptiveadaptive_thresholding
    Boolean? _jaggyadditional_thinningscaling
    Boolean? default_rounds_
    Int? _threshold_gray
    Boolean? default_auto_autoresolution
    Boolean? _negateinvert_color
    Int? _rotate_rotate
    Int three_zero_zero_x_four_zero_zero
    String config_file
    String inch_i_slash_smi_slash_can
    String rounds
  }
  command <<<
    osra \
      ~{three_zero_zero_x_four_zero_zero} \
      ~{config_file} \
      ~{inch_i_slash_smi_slash_can} \
      ~{rounds} \
      ~{if (learn) then "--learn" else ""} \
      ~{if defined(_write_filenamewrite) then ("-w " +  '"' + _write_filenamewrite + '"') else ""} \
      ~{if defined(preview) then ("--preview " +  '"' + preview + '"') else ""} \
      ~{if (dimensions_size_dimensions) then "-s" else ""} \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if (_verbosebe_verbose) then "-v" else ""} \
      ~{if (_debugprint_information) then "-d" else ""} \
      ~{if defined(_superatom_configfilesuperatom) then ("-a " +  '"' + _superatom_configfilesuperatom + '"') else ""} \
      ~{if defined(_spelling_correction) then ("-l " +  '"' + _spelling_correction + '"') else ""} \
      ~{if (_bondshow_average) then "-b" else ""} \
      ~{if (_coordinatesshow_surrounding) then "-c" else ""} \
      ~{if (_pageshow_page) then "-e" else ""} \
      ~{if (_guessprint_resolution) then "-g" else ""} \
      ~{if (_printprint_estimate) then "-p" else ""} \
      ~{if defined(embedded_format) then ("--embedded-format " +  '"' + embedded_format + '"') else ""} \
      ~{if defined(_format_cansmisdfoutput) then ("-f " +  '"' + _format_cansmisdfoutput + '"') else ""} \
      ~{if (_adaptiveadaptive_thresholding) then "-i" else ""} \
      ~{if (_jaggyadditional_thinningscaling) then "-j" else ""} \
      ~{if (default_rounds_) then "-u" else ""} \
      ~{if defined(_threshold_gray) then ("-t " +  '"' + _threshold_gray + '"') else ""} \
      ~{if (default_auto_autoresolution) then "-r" else ""} \
      ~{if (_negateinvert_color) then "-n" else ""} \
      ~{if defined(_rotate_rotate) then ("-R " +  '"' + _rotate_rotate + '"') else ""}
  >>>
  parameter_meta {
    learn: "Print out all structure guesses with confidence parameters"
    _write_filenamewrite: ",  --write <filename>\\nWrite recognized structures to text file"
    preview: "Preview Image"
    dimensions_size_dimensions: "<dimensions, 300x400>,  --size <dimensions, 300x400>\\nResize image on output"
    _output_filename: ",  --output <filename prefix>\\nWrite recognized structures to image files with given prefix"
    _verbosebe_verbose: ",  --verbose\\nBe verbose and print the program flow"
    _debugprint_information: ",  --debug\\nPrint out debug information on spelling corrections"
    _superatom_configfilesuperatom: ",  --superatom <configfile>\\nSuperatom label map to SMILES"
    _spelling_correction: ",  --spelling <configfile>\\nSpelling correction dictionary"
    _bondshow_average: ",  --bond\\nShow average bond length in pixels (only for SDF/SMI/CAN output\\nformat)"
    _coordinatesshow_surrounding: ",  --coordinates\\nShow surrounding box coordinates (only for SDF/SMI/CAN output format)"
    _pageshow_page: ",  --page\\nShow page number for PDF/PS/TIFF documents (only for SDF/SMI/CAN\\noutput format)"
    _guessprint_resolution: ",  --guess\\nPrint out resolution guess"
    _printprint_estimate: ",  --print\\nPrint out confidence estimate"
    embedded_format: "Embedded format"
    _format_cansmisdfoutput: ",  --format <can/smi/sdf>\\nOutput format"
    _adaptiveadaptive_thresholding: ",  --adaptive\\nAdaptive thresholding pre-processing, useful for low light/low\\ncontrast images"
    _jaggyadditional_thinningscaling: ",  --jaggy\\nAdditional thinning/scaling down of low quality documents"
    default_rounds_: "<default: 0 rounds>,  --unpaper <default: 0 rounds>\\nPre-process image with unpaper algorithm, rounds"
    _threshold_gray: ",  --threshold <0.2..0.8>\\nGray level threshold"
    default_auto_autoresolution: "<default: auto>,  --resolution <default: auto>\\nResolution in dots per inch"
    _negateinvert_color: ",  --negate\\nInvert color (white on black)"
    _rotate_rotate: ",  --rotate <0..360>\\nRotate image clockwise by specified number of degrees"
    three_zero_zero_x_four_zero_zero: ""
    config_file: ""
    inch_i_slash_smi_slash_can: ""
    rounds: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_filename = "${in__output_filename}"
  }
}