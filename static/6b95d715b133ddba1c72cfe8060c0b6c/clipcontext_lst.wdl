version 1.0

task ClipcontextLst {
  input {
    Int minMinLen
    Boolean strictStrict
    Boolean addAddInfos
    String gtfGtf
    String outOut
  }
  command <<<
    clipcontext lst \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--add-infos" false="" addAddInfos} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}