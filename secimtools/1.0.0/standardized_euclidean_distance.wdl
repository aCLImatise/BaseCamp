version 1.0

task StandardizedEuclideanDistance.py {
  input {
    String perPer
    String palettePalette
    String colorColor
  }
  command <<<
    standardized_euclidean_distance.py \
      ~{if defined(perPer) then ("--per " +  '"' + perPer + '"') else ""} \
      ~{if defined(palettePalette) then ("--palette " +  '"' + palettePalette + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""}
  >>>
}