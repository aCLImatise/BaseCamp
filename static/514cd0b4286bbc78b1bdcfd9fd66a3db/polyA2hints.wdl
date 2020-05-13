version 1.0

task PolyA2hints.pl {
  input {
    String? swapSwapStrand
  }
  command <<<
    polyA2hints.pl \
      ~{swapSwapStrand}
  >>>
}