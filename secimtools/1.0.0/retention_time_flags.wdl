version 1.0

task RetentionTimeFlags.py {
  input {
    String inputInput
    String designDesign
    String idId
    Int minutesMinutes
    Boolean pctlPctl
    String cvCvCutOff
    String figureFigure
    String flagFlag
    String palettePalette
    String colorColor
  }
  command <<<
    retention_time_flags.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(minutesMinutes) then ("--minutes " +  '"' + minutesMinutes + '"') else ""} \
      ~{true="--pctl" false="" pctlPctl} \
      ~{if defined(cvCvCutOff) then ("--CVcutoff " +  '"' + cvCvCutOff + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(flagFlag) then ("--flag " +  '"' + flagFlag + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}