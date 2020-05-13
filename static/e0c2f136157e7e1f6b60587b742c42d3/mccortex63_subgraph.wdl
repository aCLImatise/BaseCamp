version 1.0

task Mccortex63Subgraph {
  input {
    String distDist
    Boolean invertInvert
    Boolean unitUnitIgs
  }
  command <<<
    mccortex63 subgraph \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--unitigs" false="" unitUnitIgs}
  >>>
}