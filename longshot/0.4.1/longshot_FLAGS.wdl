version 1.0

task LongshotFLAGS {
  input {
    String bamBam
    String refRef
    String outOut
    String? optionsOptions
  }
  command <<<
    longshot FLAGS \
      ~{optionsOptions} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}