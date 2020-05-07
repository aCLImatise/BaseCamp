version 1.0

task DnaseWigTracks.pyRegions {
  input {
    Boolean realReal
    Boolean aA
    String? regionsRegions
    String? readsReads
    String? fwFwOutput
    String? revRevOutput
  }
  command <<<
    dnase_wig_tracks.py regions \
      ~{regionsRegions} \
      ~{true="--real" false="" realReal} \
      ~{true="-A" false="" aA} \
      ~{readsReads} \
      ~{fwFwOutput} \
      ~{revRevOutput}
  >>>
}