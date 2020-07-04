version 1.0

task KtImportRDP {
  input {
    String rdp_details
    String name
  }
  command <<<
    ktImportRDP \
      ~{rdp_details} \
      ~{name}
  >>>
  parameter_meta {
    rdp_details: "RDP assignment details downloaded as text from the RDP Classifier web portal or output by the command line RDP Classifier or Multiclassifier. By default, separate datasets will be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used. _________"
  }
}