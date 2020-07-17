version 1.0

task VcfToTab {
  input {
    Boolean? iupac
    String in_dot_vcf
    String out_dot_tab
  }
  command <<<
    vcf-to-tab \
      ~{in_dot_vcf} \
      ~{out_dot_tab} \
      ~{true="--iupac" false="" iupac}
  >>>
  parameter_meta {
    iupac: "Use one-letter IUPAC codes"
    in_dot_vcf: ""
    out_dot_tab: ""
  }
}