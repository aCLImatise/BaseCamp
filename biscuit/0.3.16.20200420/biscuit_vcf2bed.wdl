version 1.0

task BiscuitVcf2bed {
  input {
    String? extract_type_
    Int? minimum_coverage
    String? sample_takes
    Boolean? show_context_reference
    String vcf
  }
  command <<<
    biscuit vcf2bed \
      ~{vcf} \
      ~{if defined(extract_type_) then ("-t " +  '"' + extract_type_ + '"') else ""} \
      ~{if defined(minimum_coverage) then ("-k " +  '"' + minimum_coverage + '"') else ""} \
      ~{if defined(sample_takes) then ("-s " +  '"' + sample_takes + '"') else ""} \
      ~{true="-e" false="" show_context_reference}
  >>>
  parameter_meta {
    extract_type_: "extract type {c, cg, ch, hcg, gch, snp} [CG]"
    minimum_coverage: "minimum coverage [3]"
    sample_takes: "sample, (takes \"FIRST\", \"LAST\", \"ALL\", or specific sample names separated by \",\")[FIRST]"
    show_context_reference: "show context (reference base, context group {CG,CHG,CHH}, 2-base {CA,CC,CG,CT} and 5-base context) before beta value and coverage column"
    vcf: ""
  }
}