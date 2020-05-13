version 1.0

task VcfToTab {
  input {
    Boolean iupacIupac
    String? optionsOptions
    String? inInVcf
    String? outOutTab
  }
  command <<<
    vcf-to-tab \
      ~{optionsOptions} \
      ~{true="--iupac" false="" iupacIupac} \
      ~{inInVcf} \
      ~{outOutTab}
  >>>
}