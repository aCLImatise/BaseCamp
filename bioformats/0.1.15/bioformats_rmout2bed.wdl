version 1.0

task BioformatsRmout2bed {
  input {
    String colorColor
    String nameName
    Boolean shortShort
    String? rmRmOutFile
    String? bedBedFile
  }
  command <<<
    bioformats rmout2bed \
      ~{rmRmOutFile} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--short" false="" shortShort} \
      ~{bedBedFile}
  >>>
}