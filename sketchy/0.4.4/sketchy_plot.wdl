version 1.0

task SketchyPlot {
  input {
    File indexIndex
    File keyKey
    File sSSsh
    File sshSsh
    Int stableStable
    String palettePalette
    String prefixPrefix
    String formatFormat
    Boolean verboseVerbose
  }
  command <<<
    sketchy plot \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(sSSsh) then ("--sssh " +  '"' + sSSsh + '"') else ""} \
      ~{if defined(sshSsh) then ("--ssh " +  '"' + sshSsh + '"') else ""} \
      ~{if defined(stableStable) then ("--stable " +  '"' + stableStable + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}