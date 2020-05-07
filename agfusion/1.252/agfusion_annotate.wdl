version 1.0

task AgfusionAnnotate {
  input {
    String gene5Gene5Prime
    String gene3Gene3Prime
    String junctionJunction5Prime
    String junctionJunction3Prime
    String databaseDatabase
    String outOut
    Boolean noncanonicalNoncanonical
    Array[String]+ proteinProteinDatabases
    String reReColor
    String renameRename
    Array[String]+ excludeExcludeDomain
    String typeType
    String widthWidth
    String heightHeight
    String dpiDpi
    String fontFontSize
    Boolean wtWt
    Boolean middleMiddleStar
    Boolean noNoDomainLabels
    Boolean debugDebug
    String scaleScale
  }
  command <<<
    agfusion annotate \
      ~{if defined(gene5Gene5Prime) then ("--gene5prime " +  '"' + gene5Gene5Prime + '"') else ""} \
      ~{if defined(gene3Gene3Prime) then ("--gene3prime " +  '"' + gene3Gene3Prime + '"') else ""} \
      ~{if defined(junctionJunction5Prime) then ("--junction5prime " +  '"' + junctionJunction5Prime + '"') else ""} \
      ~{if defined(junctionJunction3Prime) then ("--junction3prime " +  '"' + junctionJunction3Prime + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--noncanonical" false="" noncanonicalNoncanonical} \
      ~{if defined(proteinProteinDatabases) then ("--protein_databases " +  '"' + proteinProteinDatabases + '"') else ""} \
      ~{if defined(reReColor) then ("--recolor " +  '"' + reReColor + '"') else ""} \
      ~{if defined(renameRename) then ("--rename " +  '"' + renameRename + '"') else ""} \
      ~{if defined(excludeExcludeDomain) then ("--exclude_domain " +  '"' + excludeExcludeDomain + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontsize " +  '"' + fontFontSize + '"') else ""} \
      ~{true="--WT" false="" wtWt} \
      ~{true="--middlestar" false="" middleMiddleStar} \
      ~{true="--no_domain_labels" false="" noNoDomainLabels} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""}
  >>>
}