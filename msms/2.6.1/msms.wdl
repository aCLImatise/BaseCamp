version 1.0

task Msms {
  input {
    Float probeProbeRadius
    Float densityDensity
    Float hHDensity
    Boolean surfaceSurface
    Boolean noNoArea
    String socketSocketName
    String socketSocketPort
    Boolean xdrXdr
    Boolean sSInetd
    Boolean nohNoh
    Boolean noNoRestOnPbr
    Boolean noNoRest
    File ifIf
    File ofOf
    File afAf
    Boolean noNoHeader
    Boolean freeFreeVertices
    Boolean allAllComponents
    Boolean oneOneCavity
  }
  command <<<
    msms \
      ~{if defined(probeProbeRadius) then ("-probe_radius " +  '"' + probeProbeRadius + '"') else ""} \
      ~{if defined(densityDensity) then ("-density " +  '"' + densityDensity + '"') else ""} \
      ~{if defined(hHDensity) then ("-hdensity " +  '"' + hHDensity + '"') else ""} \
      ~{true="-surface" false="" surfaceSurface} \
      ~{true="-no_area" false="" noNoArea} \
      ~{if defined(socketSocketName) then ("-socketName " +  '"' + socketSocketName + '"') else ""} \
      ~{if defined(socketSocketPort) then ("-socketPort " +  '"' + socketSocketPort + '"') else ""} \
      ~{true="-xdr" false="" xdrXdr} \
      ~{true="-sinetd" false="" sSInetd} \
      ~{true="-noh" false="" nohNoh} \
      ~{true="-no_rest_on_pbr" false="" noNoRestOnPbr} \
      ~{true="-no_rest" false="" noNoRest} \
      ~{if defined(ifIf) then ("-if " +  '"' + ifIf + '"') else ""} \
      ~{if defined(ofOf) then ("-of " +  '"' + ofOf + '"') else ""} \
      ~{if defined(afAf) then ("-af " +  '"' + afAf + '"') else ""} \
      ~{true="-no_header" false="" noNoHeader} \
      ~{true="-free_vertices" false="" freeFreeVertices} \
      ~{true="-all_components" false="" allAllComponents} \
      ~{true="-one_cavity" false="" oneOneCavity}
  >>>
}