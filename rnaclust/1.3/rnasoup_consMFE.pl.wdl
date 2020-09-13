version 1.0

task RnasoupConsMFEpl {
  input {
    Boolean? fast_a
    Boolean? dir
  }
  command <<<
    rnasoup_consMFE_pl \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (dir) then "--dir" else ""}
  >>>
  parameter_meta {
    fast_a: "Original FASTA file with sequences which have been clustered."
    dir: "Directory containing intermediate*.aln files."
  }
  output {
    File out_stdout = stdout()
  }
}