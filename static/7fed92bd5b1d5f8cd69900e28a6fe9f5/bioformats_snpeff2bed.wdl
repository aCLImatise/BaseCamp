version 1.0

task BioformatsSnpeff2bed {
  input {
    Boolean bed3Bed3
    String? vcfVcfFile
    String? bedBedFile
  }
  command <<<
    bioformats snpeff2bed \
      ~{vcfVcfFile} \
      ~{true="--bed3" false="" bed3Bed3} \
      ~{bedBedFile}
  >>>
}