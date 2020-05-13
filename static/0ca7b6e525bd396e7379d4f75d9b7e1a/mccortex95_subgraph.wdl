version 1.0

task Mccortex95Subgraph {
  input {
    String distDist
    Boolean invertInvert
    Boolean unitUnitIgs
  }
  command <<<
    mccortex95 subgraph \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--unitigs" false="" unitUnitIgs}
  >>>
}