version 1.0

task DiffMotif {
  input {
    Boolean? show_overlapped_sequences
    Boolean? m
    Boolean? f
    Boolean? options
    Int motif_one
    Int motif_two
  }
  command <<<
    diff_motif \
      ~{motif_one} \
      ~{motif_two} \
      ~{if (show_overlapped_sequences) then "-o" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    show_overlapped_sequences: ": Show overlapped sequences"
    m: ": Show sequences in motif1 that are not in motif2"
    f: ": Show sequences in motif2 that are not in motif1"
    options: ""
    motif_one: ""
    motif_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}