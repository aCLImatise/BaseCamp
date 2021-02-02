version 1.0

task Miramem {
  input {
    Boolean? amm_askpmf_asmps
    Boolean? sk
    String mira_talk_at_freelists_dot_org
  }
  command <<<
    miramem \
      ~{mira_talk_at_freelists_dot_org} \
      ~{if (amm_askpmf_asmps) then "-AS" else ""} \
      ~{if (sk) then "-SK" else ""}
  >>>
  parameter_meta {
    amm_askpmf_asmps: ":amm, -AS:kpmf, -AS:mps"
    sk: ":mhim, -SK:mchr (both runtime); -SK:mhpr (accuracy)"
    mira_talk_at_freelists_dot_org: "To report bugs or ask for features, please use the SourceForge ticketing"
  }
  output {
    File out_stdout = stdout()
  }
}