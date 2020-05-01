version 1.0

task PyGenomeTracks {
  input {
    String tracksTracks
    String regionRegion
    String bedBed
    String widthWidth
    String heightHeight
    String titleTitle
    String outOutFilename
    String fontFontSize
    String dpiDpi
    String trackTrackLabelFraction
    String trackTrackLabelHalign
  }
  command <<<
    pyGenomeTracks \
      ~{if defined(tracksTracks) then ("--tracks " +  '"' + tracksTracks + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(bedBed) then ("--BED " +  '"' + bedBed + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(fontFontSize) then ("--fontSize " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(trackTrackLabelFraction) then ("--trackLabelFraction " +  '"' + trackTrackLabelFraction + '"') else ""} \
      ~{if defined(trackTrackLabelHalign) then ("--trackLabelHAlign " +  '"' + trackTrackLabelHalign + '"') else ""}
  >>>
}