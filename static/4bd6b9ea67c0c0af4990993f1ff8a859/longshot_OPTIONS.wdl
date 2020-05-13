version 1.0

task LongshotOPTIONS {
  input {
    String bamBam
    String refRef
    String outOut
    String? flagsFlags
    String? optionsOptions
  }
  command <<<
    longshot OPTIONS \
      ~{flagsFlags} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{optionsOptions}
  >>>
}