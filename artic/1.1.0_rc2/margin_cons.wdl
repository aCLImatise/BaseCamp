version 1.0

task MarginCons {
  input {
    String depthDepth
    String? referenceReference
    String? vcfVcfFile
    String? bamBamFile
  }
  command <<<
    margin_cons \
      ~{referenceReference} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{vcfVcfFile} \
      ~{bamBamFile}
  >>>
}