version 1.0

task ReverseBedBedIn {
  input {
    String? bedBedIn
    String? refRefFastA
    String? bedBedOut
  }
  command <<<
    reverse_bed bed_in \
      ~{bedBedIn} \
      ~{refRefFastA} \
      ~{bedBedOut}
  >>>
}