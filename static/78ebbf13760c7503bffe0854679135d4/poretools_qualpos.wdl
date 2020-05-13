version 1.0

task PoretoolsQualpos {
  input {
    Boolean quietQuiet
    Int minMinLength
    Int maxMaxLength
    String binBinWidth
    String typeType
    String startStart
    String endEnd
    Boolean highHighQuality
    String saveSaveAs
    File? filesFiles
  }
  command <<<
    poretools qualpos \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(binBinWidth) then ("--bin-width " +  '"' + binBinWidth + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{true="--high-quality" false="" highHighQuality} \
      ~{if defined(saveSaveAs) then ("--saveas " +  '"' + saveSaveAs + '"') else ""}
  >>>
}