version 1.0

task ReverseBedBedOut {
  input {
    String? bedBedIn
    String? refRefFastA
    String? bedBedOut
  }
  command <<<
    reverse_bed bed_out \
      ~{bedBedIn} \
      ~{refRefFastA} \
      ~{bedBedOut}
  >>>
}