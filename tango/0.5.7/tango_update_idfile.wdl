version 1.0

task TangoUpdateIdfile {
  input {
    String? taxonTaxonMap
    String? idIdFile
    String? newNewFile
  }
  command <<<
    tango update idfile \
      ~{taxonTaxonMap} \
      ~{idIdFile} \
      ~{newNewFile}
  >>>
}