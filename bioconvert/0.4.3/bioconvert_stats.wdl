version 1.0

task BioconvertStats {
  input {
    String vV
    Boolean noNoPlot
    String? bioBioConvert
  }
  command <<<
    bioconvert_stats \
      ~{bioBioConvert} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="--no-plot" false="" noNoPlot}
  >>>
}