version 1.0

task VarlociraptorCallVariants {
  input {
    Boolean? omit_read_orientation_bias
    Boolean? omit_strand_bias
    File? output_variant_calls
    Int? test_case_locus
    Directory? test_case_prefix
    String artifact_dot
    String generic
    String help
    String tumor_normal
  }
  command <<<
    varlociraptor call variants \
      ~{artifact_dot} \
      ~{generic} \
      ~{help} \
      ~{tumor_normal} \
      ~{if (omit_read_orientation_bias) then "--omit-read-orientation-bias" else ""} \
      ~{if (omit_strand_bias) then "--omit-strand-bias" else ""} \
      ~{if defined(output_variant_calls) then ("--output " +  '"' + output_variant_calls + '"') else ""} \
      ~{if defined(test_case_locus) then ("--testcase-locus " +  '"' + test_case_locus + '"') else ""} \
      ~{if defined(test_case_prefix) then ("--testcase-prefix " +  '"' + test_case_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:2.6.1--hd5fb649_0"
  }
  parameter_meta {
    omit_read_orientation_bias: "Do not consider read orientation bias when calculating the probability of an"
    omit_strand_bias: "Do not consider strand bias when calculating the probability of an artifact.Use\\nthis flag when processing (panel) sequencing data, where the wet-lab methodology\\nleads to strand bias in the coverage of genuine variants."
    output_variant_calls: "Output variant calls to given path (in BCF format). If omitted, prints\\ncalls to STDOUT."
    test_case_locus: "Create a test case for the given locus. Locus must be given in the form\\nCHROM:POS[:IDX]. IDX is thereby an optional value to select a particular\\nvariant at the locus, counting from 1. If IDX is not specified, the first\\nvariant will be chosen. Alternatively, for single variant VCFs, you can\\nspecify 'all'."
    test_case_prefix: "Create test case files in the given directory."
    artifact_dot: "--omit-read-position-bias       Do not consider read position bias when calculating the probability of an"
    generic: "Call variants for a given scenario specified with the varlociraptor calling grammar and a\\nVCF/BCF with candidate variants."
    help: "Prints this message or the help of the given subcommand(s)"
    tumor_normal: "Call somatic and germline variants from a tumor-normal sample pair and a VCF/BCF with candidate\\nvariants.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_variant_calls = "${in_output_variant_calls}"
  }
}