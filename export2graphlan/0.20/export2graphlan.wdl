version 1.0

task Export2graphlan.py {
  input {
    String annotationsAnnotations
    String externalExternalAnnotations
    String backgroundBackgroundLevels
    String backgroundBackgroundClades
    String backgroundBackgroundColors
    String titleTitle
    String titleTitleFontSize
    String defDefCladeSize
    Int minMinCladeSize
    Int maxMaxCladeSize
    String defDefFontSize
    Int minMinFontSize
    Int maxMaxFontSize
    String annotationAnnotationLegendFontSize
    String abundanceAbundanceThreshold
    String mostMostAbundant
    String leastLeastBiomarkers
    Boolean discardDiscardOtus
    Boolean internalInternalLevels
    String biomarkersBiomarkers2Colors
    String lefseLefseInput
    String lefseLefseOutput
    String treeTree
    String annotationAnnotation
    String outOutTable
    String fnameFnameRow
    String snameSnameRow
    String metadataMetadataRows
    String skipSkipRows
    String sSPerc
    String fFPerc
    String stopStop
    String fFTop
    String defDefNa
  }
  command <<<
    export2graphlan.py \
      ~{if defined(annotationsAnnotations) then ("--annotations " +  '"' + annotationsAnnotations + '"') else ""} \
      ~{if defined(externalExternalAnnotations) then ("--external_annotations " +  '"' + externalExternalAnnotations + '"') else ""} \
      ~{if defined(backgroundBackgroundLevels) then ("--background_levels " +  '"' + backgroundBackgroundLevels + '"') else ""} \
      ~{if defined(backgroundBackgroundClades) then ("--background_clades " +  '"' + backgroundBackgroundClades + '"') else ""} \
      ~{if defined(backgroundBackgroundColors) then ("--background_colors " +  '"' + backgroundBackgroundColors + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(titleTitleFontSize) then ("--title_font_size " +  '"' + titleTitleFontSize + '"') else ""} \
      ~{if defined(defDefCladeSize) then ("--def_clade_size " +  '"' + defDefCladeSize + '"') else ""} \
      ~{if defined(minMinCladeSize) then ("--min_clade_size " +  '"' + minMinCladeSize + '"') else ""} \
      ~{if defined(maxMaxCladeSize) then ("--max_clade_size " +  '"' + maxMaxCladeSize + '"') else ""} \
      ~{if defined(defDefFontSize) then ("--def_font_size " +  '"' + defDefFontSize + '"') else ""} \
      ~{if defined(minMinFontSize) then ("--min_font_size " +  '"' + minMinFontSize + '"') else ""} \
      ~{if defined(maxMaxFontSize) then ("--max_font_size " +  '"' + maxMaxFontSize + '"') else ""} \
      ~{if defined(annotationAnnotationLegendFontSize) then ("--annotation_legend_font_size " +  '"' + annotationAnnotationLegendFontSize + '"') else ""} \
      ~{if defined(abundanceAbundanceThreshold) then ("--abundance_threshold " +  '"' + abundanceAbundanceThreshold + '"') else ""} \
      ~{if defined(mostMostAbundant) then ("--most_abundant " +  '"' + mostMostAbundant + '"') else ""} \
      ~{if defined(leastLeastBiomarkers) then ("--least_biomarkers " +  '"' + leastLeastBiomarkers + '"') else ""} \
      ~{true="--discard_otus" false="" discardDiscardOtus} \
      ~{true="--internal_levels" false="" internalInternalLevels} \
      ~{if defined(biomarkersBiomarkers2Colors) then ("--biomarkers2colors " +  '"' + biomarkersBiomarkers2Colors + '"') else ""} \
      ~{if defined(lefseLefseInput) then ("--lefse_input " +  '"' + lefseLefseInput + '"') else ""} \
      ~{if defined(lefseLefseOutput) then ("--lefse_output " +  '"' + lefseLefseOutput + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(outOutTable) then ("--out_table " +  '"' + outOutTable + '"') else ""} \
      ~{if defined(fnameFnameRow) then ("--fname_row " +  '"' + fnameFnameRow + '"') else ""} \
      ~{if defined(snameSnameRow) then ("--sname_row " +  '"' + snameSnameRow + '"') else ""} \
      ~{if defined(metadataMetadataRows) then ("--metadata_rows " +  '"' + metadataMetadataRows + '"') else ""} \
      ~{if defined(skipSkipRows) then ("--skip_rows " +  '"' + skipSkipRows + '"') else ""} \
      ~{if defined(sSPerc) then ("--sperc " +  '"' + sSPerc + '"') else ""} \
      ~{if defined(fFPerc) then ("--fperc " +  '"' + fFPerc + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(fFTop) then ("--ftop " +  '"' + fFTop + '"') else ""} \
      ~{if defined(defDefNa) then ("--def_na " +  '"' + defDefNa + '"') else ""}
  >>>
}