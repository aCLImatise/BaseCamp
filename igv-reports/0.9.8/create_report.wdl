version 1.0

task CreateReport {
  input {
    String ideogramIdeogram
    Array[String]+ tracksTracks
    String templateTemplate
    String outputOutput
    Array[String]+ infoInfoColumns
    Array[String]+ infoInfoColumnsPrefixes
    Array[String]+ sampleSampleColumns
    String flankingFlanking
    Boolean standaloneStandalone
    String? sitesSites
    String? fastFastA
  }
  command <<<
    create_report \
      ~{sitesSites} \
      ~{if defined(ideogramIdeogram) then ("--ideogram " +  '"' + ideogramIdeogram + '"') else ""} \
      ~{if defined(tracksTracks) then ("--tracks " +  '"' + tracksTracks + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(infoInfoColumns) then ("--info-columns " +  '"' + infoInfoColumns + '"') else ""} \
      ~{if defined(infoInfoColumnsPrefixes) then ("--info-columns-prefixes " +  '"' + infoInfoColumnsPrefixes + '"') else ""} \
      ~{if defined(sampleSampleColumns) then ("--sample-columns " +  '"' + sampleSampleColumns + '"') else ""} \
      ~{if defined(flankingFlanking) then ("--flanking " +  '"' + flankingFlanking + '"') else ""} \
      ~{true="--standalone" false="" standaloneStandalone} \
      ~{fastFastA}
  >>>
}