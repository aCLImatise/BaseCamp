version 1.0

task Blat2gbrowse.pl {
  input {
    Boolean oldOldFormat
    File estEstNames
    String sourceSource
  }
  command <<<
    blat2gbrowse.pl \
      ~{true="--oldformat" false="" oldOldFormat} \
      ~{if defined(estEstNames) then ("--estnames " +  '"' + estEstNames + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""}
  >>>
}