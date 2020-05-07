version 1.0

task AtlasWalk {
  input {
    String? sampleSample
    String? probeProbeSet
  }
  command <<<
    atlas walk \
      ~{sampleSample} \
      ~{probeProbeSet}
  >>>
}