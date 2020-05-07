version 1.0

task Ngd {
  input {
    String sectionSection
    File formatFormat
    String assemblyAssemblyLevel
    String genusGenus
    Boolean fuzzyFuzzyGenus
    String speciesSpeciesTaxid
    String taxidTaxid
    String assemblyAssemblyAccessions
    String refseqRefseqCategory
    String outputOutputFolder
    Boolean flatFlatOutput
    Boolean humanHumanReadable
    String uriUri
    String parallelParallel
    String retriesRetries
    String metadataMetadataTable
    Boolean dryDryRun
    Boolean noNoCache
    Boolean verboseVerbose
    Boolean debugDebug
    String typeTypeMaterial
    String? groupGroup
  }
  command <<<
    ngd \
      ~{groupGroup} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(assemblyAssemblyLevel) then ("--assembly-level " +  '"' + assemblyAssemblyLevel + '"') else ""} \
      ~{if defined(genusGenus) then ("--genus " +  '"' + genusGenus + '"') else ""} \
      ~{true="--fuzzy-genus" false="" fuzzyFuzzyGenus} \
      ~{if defined(speciesSpeciesTaxid) then ("--species-taxid " +  '"' + speciesSpeciesTaxid + '"') else ""} \
      ~{if defined(taxidTaxid) then ("--taxid " +  '"' + taxidTaxid + '"') else ""} \
      ~{if defined(assemblyAssemblyAccessions) then ("--assembly-accessions " +  '"' + assemblyAssemblyAccessions + '"') else ""} \
      ~{if defined(refseqRefseqCategory) then ("--refseq-category " +  '"' + refseqRefseqCategory + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--output-folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{true="--flat-output" false="" flatFlatOutput} \
      ~{true="--human-readable" false="" humanHumanReadable} \
      ~{if defined(uriUri) then ("--uri " +  '"' + uriUri + '"') else ""} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""} \
      ~{if defined(metadataMetadataTable) then ("--metadata-table " +  '"' + metadataMetadataTable + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--no-cache" false="" noNoCache} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(typeTypeMaterial) then ("--type-material " +  '"' + typeTypeMaterial + '"') else ""}
  >>>
}