version 1.0

task BioformatsVcfeffect2bed {
  input {
    String gG
    Boolean ignoreIgnoreErrors
    String? vcfVcfFile
    String? outputOutputFile
  }
  command <<<
    bioformats vcfeffect2bed \
      ~{vcfVcfFile} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--ignore_errors" false="" ignoreIgnoreErrors} \
      ~{outputOutputFile}
  >>>
}