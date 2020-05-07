version 1.0

task Vcfremoveaberrantgenotypes {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfremoveaberrantgenotypes \
      ~{vcfVcfFile}
  >>>
}