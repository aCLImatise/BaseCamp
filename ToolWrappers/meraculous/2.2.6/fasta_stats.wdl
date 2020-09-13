version 1.0

task FastaStats {
  input {
    Boolean? size_big_scaffold
    Boolean? minimum_for_gaps
    Boolean? minimum_size_bin
    Boolean? exact_length_signal
    Boolean? minimum_length_signal
    String fast_a_file
  }
  command <<<
    fasta_stats \
      ~{fast_a_file} \
      ~{if (size_big_scaffold) then "-b" else ""} \
      ~{if (minimum_for_gaps) then "-g" else ""} \
      ~{if (minimum_size_bin) then "-l" else ""} \
      ~{if (exact_length_signal) then "-N" else ""} \
      ~{if (minimum_length_signal) then "-n" else ""}
  >>>
  parameter_meta {
    size_big_scaffold: "##   size of big scaffold cutoff in kb [50]"
    minimum_for_gaps: "##   minimum size bin to display for gaps [none]"
    minimum_size_bin: "##   minimum size bin to display [1000]"
    exact_length_signal: "##   exact length of N's to signal scaffold end [-1]"
    minimum_length_signal: "##   minimum length of N's to signal contig end [9]"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}