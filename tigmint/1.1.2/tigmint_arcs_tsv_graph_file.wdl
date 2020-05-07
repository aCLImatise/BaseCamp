version 1.0

task TigmintArcsTsvGraphFile {
  input {
    String? graphGraphFile
    String? outOutFile
    String? fastFastAFile
  }
  command <<<
    tigmint-arcs-tsv graph_file \
      ~{graphGraphFile} \
      ~{outOutFile} \
      ~{fastFastAFile}
  >>>
}