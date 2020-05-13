version 1.0

task VcfQuery {
  input {
    Boolean columnsColumns
    String formatFormat
    Boolean listListColumns
    String regionRegion
    Boolean useUseOldMethod
    String? optionsOptions
    File? fileFileVcfGz
  }
  command <<<
    vcf-query \
      ~{optionsOptions} \
      ~{true="--columns" false="" columnsColumns} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--list-columns" false="" listListColumns} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--use-old-method" false="" useUseOldMethod} \
      ~{fileFileVcfGz}
  >>>
}