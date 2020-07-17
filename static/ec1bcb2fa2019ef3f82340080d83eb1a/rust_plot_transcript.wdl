version 1.0

task RustPlotTranscript.bakRUSTCodonFile {
  input {
    String? o
    String rust_plot_transcript_dot_bak
    Directory? directory
  }
  command <<<
    rust_plot_transcript.bak RUST-codon-file \
      ~{rust_plot_transcript_dot_bak} \
      ~{directory} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    rust_plot_transcript_dot_bak: ""
    directory: ""
  }
}