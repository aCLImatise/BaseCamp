version 1.0

task RunMaxBin.pl {
  input {
    Boolean contigContig
    Boolean outOut
  }
  command <<<
    run_MaxBin.pl \
      ~{true="-contig" false="" contigContig} \
      ~{true="-out" false="" outOut}
  >>>
}