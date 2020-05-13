version 1.0

task TangoUpdateNewfile {
  input {
    String? taxonTaxonMap
    String? idIdFile
    String? newNewFile
  }
  command <<<
    tango update newfile \
      ~{taxonTaxonMap} \
      ~{idIdFile} \
      ~{newNewFile}
  >>>
}