version 1.0

task BioformatsVcfgeno2bed {
  input {
    String individualsIndividuals
    String? vcfVcfFile
    String? outputOutputFile
  }
  command <<<
    bioformats vcfgeno2bed \
      ~{vcfVcfFile} \
      ~{if defined(individualsIndividuals) then ("--individuals " +  '"' + individualsIndividuals + '"') else ""} \
      ~{outputOutputFile}
  >>>
}