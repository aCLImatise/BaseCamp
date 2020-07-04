version 1.0

task VarlociraptorCallVariants {
  input {
    String? output_variant_calls
    String? test_case_locus
    String? test_case_prefix
    String generic
    String help
    String tumor_normal
  }
  command <<<
    varlociraptor call variants \
      ~{generic} \
      ~{help} \
      ~{tumor_normal} \
      ~{if defined(output_variant_calls) then ("--output " +  '"' + output_variant_calls + '"') else ""} \
      ~{if defined(test_case_locus) then ("--testcase-locus " +  '"' + test_case_locus + '"') else ""} \
      ~{if defined(test_case_prefix) then ("--testcase-prefix " +  '"' + test_case_prefix + '"') else ""}
  >>>
  parameter_meta {
    output_variant_calls: "Output variant calls to given path (in BCF format). If omitted, prints calls to STDOUT."
    test_case_locus: "Create a test case for the given locus. Locus must be given in the form CHROM:POS[:IDX]. IDX is thereby an optional value to select a particular variant at the locus, counting from 1. If IDX is not specified, the first variant will be chosen. Alternatively, for single variant VCFs, you can specify 'all'."
    test_case_prefix: "Create test case files in the given directory."
    generic: "Call variants for a given scenario specified with the varlociraptor calling grammar and a VCF/BCF with candidate variants."
    help: "Prints this message or the help of the given subcommand(s)"
    tumor_normal: "Call somatic and germline variants from a tumor-normal sample pair and a VCF/BCF with candidate variants."
  }
}