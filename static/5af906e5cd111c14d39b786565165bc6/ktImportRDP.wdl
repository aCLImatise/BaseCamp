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
  runtime {
    docker: "None"
  }
  parameter_meta {
    rdp_details: "RDP assignment details downloaded as text from the RDP\\nClassifier web portal or output by the command line RDP\\nClassifier or Multiclassifier. By default, separate datasets\\nwill be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}