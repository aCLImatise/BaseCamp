version 1.0

task Bsp2sam.py {
  input {
    File outOut
    File refRef
    Boolean quietQuiet
    String? bsBsMapMappingFile
  }
  command <<<
    bsp2sam.py \
      ~{bsBsMapMappingFile} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}