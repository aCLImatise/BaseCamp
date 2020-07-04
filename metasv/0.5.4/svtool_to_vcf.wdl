version 1.0

task SvtoolToVcf.py {
  input {
    String? sv_tool_output
    String? output_vcf_create
    String? tool
    String? sample
    String? reference
    Boolean? sort
    Boolean? index
  }
  command <<<
    svtool_to_vcf.py \
      ~{if defined(sv_tool_output) then ("--input " +  '"' + sv_tool_output + '"') else ""} \
      ~{if defined(output_vcf_create) then ("--output " +  '"' + output_vcf_create + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--sort" false="" sort} \
      ~{true="--index" false="" index}
  >>>
  parameter_meta {
    sv_tool_output: "SV tool output file (default: None)"
    output_vcf_create: "Output VCF to create (default: None)"
    tool: "Tool name (default: BreakDancer)"
    sample: "Sample name (default: None)"
    reference: "Reference FASTA (default: None)"
    sort: "Sort the VCF records before writing (default: False)"
    index: "Tabix compress and index the output VCF (default: False)"
  }
}