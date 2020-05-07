version 1.0

task MakeKreport.py {
  input {
    String krakenKraken
    String taxonomyTaxonomy
    String outputOutput
    Boolean useUseReadLen
  }
  command <<<
    make_kreport.py \
      ~{if defined(krakenKraken) then ("--kraken " +  '"' + krakenKraken + '"') else ""} \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--use-read-len" false="" useUseReadLen}
  >>>
}