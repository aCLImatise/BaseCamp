version 1.0

task RbtVcfAnnotateDgidb {
  input {
    String apiApiPath
    String fieldField
    String genesGenesPerRequest
    String? optionsOptions
    String? vcfVcf
  }
  command <<<
    rbt vcf-annotate-dgidb \
      ~{optionsOptions} \
      ~{if defined(apiApiPath) then ("--api-path " +  '"' + apiApiPath + '"') else ""} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{if defined(genesGenesPerRequest) then ("--genes-per-request " +  '"' + genesGenesPerRequest + '"') else ""} \
      ~{vcfVcf}
  >>>
}