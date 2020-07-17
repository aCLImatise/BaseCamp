version 1.0

task RunMaxBin.pl {
  input {
    Boolean? contig
    Boolean? out
  }
  command <<<
    run_MaxBin.pl \
      ~{true="-contig" false="" contig} \
      ~{true="-out" false="" out}
  >>>
  parameter_meta {
    contig: "(contig file)"
    out: "(output file)"
  }
}