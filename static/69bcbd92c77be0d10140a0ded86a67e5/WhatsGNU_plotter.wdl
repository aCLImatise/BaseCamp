version 1.0

task WhatsGNUPlotter.py {
  input {
    String heatHeatMap
    String listListGenes
    String fastFastA
    Boolean outputOutputBlastp
    String strainsStrainsOrder
    Boolean rarityRarity
    String rarityRarityColor
    String fsFs
    String heatHeatMapColor
    String maskedMaskedColor
    String fontFontSize
    String titleTitle
    String metadataMetadataBarplot
    Boolean allAllMetadata
    String selectSelectMetadata
    Boolean histogramHistogram
    String histogramHistogramColor
    String histogramHistogramBins
    String pP
    String strainsStrainsTagVolcano
    String cutCutOffVolcano
    String ccCc
    String? prefixPrefixName
    Directory? directoryDirectoryPath
  }
  command <<<
    WhatsGNU_plotter.py \
      ~{prefixPrefixName} \
      ~{if defined(heatHeatMap) then ("--heatmap " +  '"' + heatHeatMap + '"') else ""} \
      ~{if defined(listListGenes) then ("--list_genes " +  '"' + listListGenes + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--output_blastp" false="" outputOutputBlastp} \
      ~{if defined(strainsStrainsOrder) then ("--strains_order " +  '"' + strainsStrainsOrder + '"') else ""} \
      ~{true="--rarity" false="" rarityRarity} \
      ~{if defined(rarityRarityColor) then ("--rarity_color " +  '"' + rarityRarityColor + '"') else ""} \
      ~{if defined(fsFs) then ("-fs " +  '"' + fsFs + '"') else ""} \
      ~{if defined(heatHeatMapColor) then ("--heatmap_color " +  '"' + heatHeatMapColor + '"') else ""} \
      ~{if defined(maskedMaskedColor) then ("--masked_color " +  '"' + maskedMaskedColor + '"') else ""} \
      ~{if defined(fontFontSize) then ("--font_size " +  '"' + fontFontSize + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(metadataMetadataBarplot) then ("--metadata_barplot " +  '"' + metadataMetadataBarplot + '"') else ""} \
      ~{true="--all_metadata" false="" allAllMetadata} \
      ~{if defined(selectSelectMetadata) then ("--select_metadata " +  '"' + selectSelectMetadata + '"') else ""} \
      ~{true="--histogram" false="" histogramHistogram} \
      ~{if defined(histogramHistogramColor) then ("--histogram_color " +  '"' + histogramHistogramColor + '"') else ""} \
      ~{if defined(histogramHistogramBins) then ("--histogram_bins " +  '"' + histogramHistogramBins + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(strainsStrainsTagVolcano) then ("--strains_tag_volcano " +  '"' + strainsStrainsTagVolcano + '"') else ""} \
      ~{if defined(cutCutOffVolcano) then ("--cutoff_volcano " +  '"' + cutCutOffVolcano + '"') else ""} \
      ~{if defined(ccCc) then ("-cc " +  '"' + ccCc + '"') else ""} \
      ~{directoryDirectoryPath}
  >>>
}