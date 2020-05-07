version 1.0

task VcfIndelStats {
  input {
    String? optionsOptions
    String? inInVcf
    String? outOutTxt
  }
  command <<<
    vcf-indel-stats \
      ~{optionsOptions} \
      ~{inInVcf} \
      ~{outOutTxt}
  >>>
}