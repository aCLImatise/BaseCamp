version 1.0

task SpectrastCreaterb {
  input {
    File? explicitly_named_output
    String? spectrum_files
    Boolean? binary_output
    String? predicate
    Float? p_thresh
    String? instrument_acquisition
    Int file_one_dot_pep_dot_xml
  }
  command <<<
    spectrast_create_rb \
      ~{file_one_dot_pep_dot_xml} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(spectrum_files) then ("--spectrum-files " +  '"' + spectrum_files + '"') else ""} \
      ~{if (binary_output) then "--binary-output" else ""} \
      ~{if defined(predicate) then ("--predicate " +  '"' + predicate + '"') else ""} \
      ~{if defined(p_thresh) then ("--p-thresh " +  '"' + p_thresh + '"') else ""} \
      ~{if defined(instrument_acquisition) then ("--instrument-acquisition " +  '"' + instrument_acquisition + '"') else ""}
  >>>
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    spectrum_files: "Paths to raw spectrum files. These should be provided in a comma separated list"
    binary_output: "Produce spectral libraries in binary format rather than ASCII [false]"
    predicate: "Keep only spectra satifying predicate pred. Should be a C-style predicate"
    p_thresh: "Probability threshold below which spectra are discarded [0.99]"
    instrument_acquisition: "Set the instrument and acquisition settings of the spectra (in case not specified in data files).\\nExamples: CID, ETD, CID-QTOF, HCD. The latter two are treated as high-mass accuracy spectra. [CID]\\n"
    file_one_dot_pep_dot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}