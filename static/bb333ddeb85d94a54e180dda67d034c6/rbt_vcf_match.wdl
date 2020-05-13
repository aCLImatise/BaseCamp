version 1.0

task RbtVcfMatch {
  input {
    Int maxMaxDist
    Int maxMaxLenDiff
    String? optionsOptions
    String? vcfVcf
  }
  command <<<
    rbt vcf-match \
      ~{optionsOptions} \
      ~{if defined(maxMaxDist) then ("--max-dist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(maxMaxLenDiff) then ("--max-len-diff " +  '"' + maxMaxLenDiff + '"') else ""} \
      ~{vcfVcf}
  >>>
}