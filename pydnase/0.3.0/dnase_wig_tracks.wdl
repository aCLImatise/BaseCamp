version 1.0

task DnaseWigTracks.py {
  input {
    Boolean rR
    Boolean aA
  }
  command <<<
    dnase_wig_tracks.py \
      ~{true="-r" false="" rR} \
      ~{true="-A" false="" aA}
  >>>
}