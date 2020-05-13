version 1.0

task PoretoolsFastq {
  input {
    Boolean quietQuiet
    String typeType
    String startStart
    String endEnd
    Int minMinLength
    Int maxMaxLength
    Boolean highHighQuality
    Boolean normalNormalQuality
    String groupGroup
    File? filesFiles
  }
  command <<<
    poretools fastq \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{true="--high-quality" false="" highHighQuality} \
      ~{true="--normal-quality" false="" normalNormalQuality} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""}
  >>>
}