version 1.0

task TigmintArcsTsvOutFile {
  input {
    String? graphGraphFile
    String? outOutFile
    String? fastFastAFile
  }
  command <<<
    tigmint-arcs-tsv out_file \
      ~{graphGraphFile} \
      ~{outOutFile} \
      ~{fastFastAFile}
  >>>
}