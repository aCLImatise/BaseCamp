version 1.0

task MahalanobisDistance.py {
  input {
    String perPer
    String penaltyPenalty
    String logLog
    String palettePalette
    String colorColor
  }
  command <<<
    mahalanobis_distance.py \
      ~{if defined(perPer) then ("--per " +  '"' + perPer + '"') else ""} \
      ~{if defined(penaltyPenalty) then ("--penalty " +  '"' + penaltyPenalty + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}