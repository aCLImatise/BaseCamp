version 1.0

task TangoUpdateTaxonmap {
  input {
    String? taxonTaxonMap
    String? idIdFile
    String? newNewFile
  }
  command <<<
    tango update taxonmap \
      ~{taxonTaxonMap} \
      ~{idIdFile} \
      ~{newNewFile}
  >>>
}