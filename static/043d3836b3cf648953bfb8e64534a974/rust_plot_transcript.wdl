version 1.0

task RustPlotTranscript.bak {
  input {
    String oO
    String? rustRustCodonFile
  }
  command <<<
    rust_plot_transcript.bak \
      ~{rustRustCodonFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}