version 1.0

task DiamondAddTaxonomy {
  input {
    File taxTaxDumpFilename
    File taxTaxDbFilename
    String diamondDiamondOutputFormat
    File outputOutputFile
  }
  command <<<
    diamond_add_taxonomy \
      ~{if defined(taxTaxDumpFilename) then ("--taxdump_filename " +  '"' + taxTaxDumpFilename + '"') else ""} \
      ~{if defined(taxTaxDbFilename) then ("--taxdb_filename " +  '"' + taxTaxDbFilename + '"') else ""} \
      ~{if defined(diamondDiamondOutputFormat) then ("--diamond_output_format " +  '"' + diamondDiamondOutputFormat + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}