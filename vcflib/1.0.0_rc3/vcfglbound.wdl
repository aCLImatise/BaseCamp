version 1.0

task Vcfglbound {
  input {
    String boundBound
    Boolean excludeExcludeBroken
    String? vcfVcfFile
  }
  command <<<
    vcfglbound \
      ~{vcfVcfFile} \
      ~{if defined(boundBound) then ("--bound " +  '"' + boundBound + '"') else ""} \
      ~{true="--exclude-broken" false="" excludeExcludeBroken}
  >>>
}