version 1.0

task Graphlan.py {
  input {
    Boolean formatFormat
    String warningsWarnings
    String positionsPositions
    String dpiDpi
    String sizeSize
    String padPad
    Boolean externalExternalLegends
    Boolean avoidAvoidReordering
    String? inputInputTree
    String? outputOutputImage
  }
  command <<<
    graphlan.py \
      ~{inputInputTree} \
      ~{true="--format" false="" formatFormat} \
      ~{if defined(warningsWarnings) then ("--warnings " +  '"' + warningsWarnings + '"') else ""} \
      ~{if defined(positionsPositions) then ("--positions " +  '"' + positionsPositions + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(padPad) then ("--pad " +  '"' + padPad + '"') else ""} \
      ~{true="--external_legends" false="" externalExternalLegends} \
      ~{true="--avoid_reordering" false="" avoidAvoidReordering} \
      ~{outputOutputImage}
  >>>
}