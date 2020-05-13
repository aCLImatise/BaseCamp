version 1.0

task Humann2Barplot {
  input {
    String inputInput
    String focalFocalFeature
    Int topTopStrata
    String sS
    String lastLastMetaDatum
    String focalFocalMetaDatum
    String colormapColormap
    String metaMetaColormap
    Boolean excludeExcludeUnclassified
    File outputOutput
    String scalingScaling
    Boolean asAsGenera
    Boolean gridGrid
    Boolean removeRemoveZeroes
    Int widthWidth
    Int dD
    String yY
    Boolean eE
  }
  command <<<
    humann2_barplot \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(focalFocalFeature) then ("--focal-feature " +  '"' + focalFocalFeature + '"') else ""} \
      ~{if defined(topTopStrata) then ("--top-strata " +  '"' + topTopStrata + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(lastLastMetaDatum) then ("--last-metadatum " +  '"' + lastLastMetaDatum + '"') else ""} \
      ~{if defined(focalFocalMetaDatum) then ("--focal-metadatum " +  '"' + focalFocalMetaDatum + '"') else ""} \
      ~{if defined(colormapColormap) then ("--colormap " +  '"' + colormapColormap + '"') else ""} \
      ~{if defined(metaMetaColormap) then ("--meta-colormap " +  '"' + metaMetaColormap + '"') else ""} \
      ~{true="--exclude-unclassified" false="" excludeExcludeUnclassified} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(scalingScaling) then ("--scaling " +  '"' + scalingScaling + '"') else ""} \
      ~{true="--as-genera" false="" asAsGenera} \
      ~{true="--grid" false="" gridGrid} \
      ~{true="--remove-zeroes" false="" removeRemoveZeroes} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{true="-e" false="" eE}
  >>>
}