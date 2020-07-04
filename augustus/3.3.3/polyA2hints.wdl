version 1.0

task PolyA2hints.pl {
  input {
    String swap_strand
  }
  command <<<
    polyA2hints.pl \
      ~{swap_strand}
  >>>
  parameter_meta {
    swap_strand: "swap strand, currently use this for polyT files"
  }
}