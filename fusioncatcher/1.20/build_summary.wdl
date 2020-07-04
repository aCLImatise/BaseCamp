version 1.0

task BuildSummary.py {
  input {
    String? input_report_fusion
    String? viruses
    String? output_summary_genetranscript
  }
  command <<<
    build_summary.py \
      ~{if defined(input_report_fusion) then ("--input " +  '"' + input_report_fusion + '"') else ""} \
      ~{if defined(viruses) then ("--viruses " +  '"' + viruses + '"') else ""} \
      ~{if defined(output_summary_genetranscript) then ("--output " +  '"' + output_summary_genetranscript + '"') else ""}
  >>>
  parameter_meta {
    input_report_fusion: "The input report containg detailed information about fusion genes found."
    viruses: "The input report containg detailed information about viruses/bacteria/found found."
    output_summary_genetranscript: "The output summary of gene/transcript fusions found."
  }
}