version 1.0

task Vcfintersect {
  input {
    Boolean mergeMergeTo
    String? vcfVcfFile
  }
  command <<<
    vcfintersect \
      ~{vcfVcfFile} \
      ~{true="--merge-to" false="" mergeMergeTo}
  >>>
}