version 1.0

task TigmintArcsTsvFastaFile {
  input {
    String? graphGraphFile
    String? outOutFile
    String? fastFastAFile
  }
  command <<<
    tigmint-arcs-tsv fasta_file \
      ~{graphGraphFile} \
      ~{outOutFile} \
      ~{fastFastAFile}
  >>>
}