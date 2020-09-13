version 1.0

task SvtoolToVcfpy {
  input {
    String? sample
    File? sv_tool_output
    String? output_vcf_create
    String? tool
    String? reference
    Boolean? sort
    Boolean? index
  }
  command <<<
    svtool_to_vcf_py \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(sv_tool_output) then ("--input " +  '"' + sv_tool_output + '"') else ""} \
      ~{if defined(output_vcf_create) then ("--output " +  '"' + output_vcf_create + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (index) then "--index" else ""}
  >>>
  parameter_meta {
    sample: "[--reference REFERENCE] [--sort]"
    sv_tool_output: "SV tool output file (default: None)"
    output_vcf_create: "Output VCF to create (default: None)"
    tool: "Tool name (default: BreakDancer)"
    reference: "Reference FASTA (default: None)"
    sort: "Sort the VCF records before writing (default: False)"
    index: "Tabix compress and index the output VCF (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_sv_tool_output = "${in_sv_tool_output}"
  }
}