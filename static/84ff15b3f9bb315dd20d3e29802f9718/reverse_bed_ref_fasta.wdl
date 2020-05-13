version 1.0

task ReverseBedRefFasta {
  input {
    String? bedBedIn
    String? refRefFastA
    String? bedBedOut
  }
  command <<<
    reverse_bed ref_fasta \
      ~{bedBedIn} \
      ~{refRefFastA} \
      ~{bedBedOut}
  >>>
}