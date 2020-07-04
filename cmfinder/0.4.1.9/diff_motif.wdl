version 1.0

task DiffMotif {
  input {
    Boolean? show_overlapped_sequences
    Boolean? m
    Boolean? f
    Boolean? options
    String motif_one
    String motif_two
  }
  command <<<
    diff_motif \
      ~{motif_one} \
      ~{motif_two} \
      ~{true="-o" false="" show_overlapped_sequences} \
      ~{true="-m" false="" m} \
      ~{true="-f" false="" f} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    show_overlapped_sequences: ": Show overlapped sequences "
    m: ": Show sequences in motif1 that are not in motif2"
    f: ": Show sequences in motif2 that are not in motif1"
    options: ""
    motif_one: ""
    motif_two: ""
  }
}