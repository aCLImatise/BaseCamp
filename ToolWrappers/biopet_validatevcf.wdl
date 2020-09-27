version 1.0

task Biopetvalidatevcf {
  input {
    String? log_level
    File? input_vcf
    File? reference
    Boolean? disable_fail
    String validate_vcf
  }
  command <<<
    biopet_validatevcf \
      ~{validate_vcf} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(input_vcf) then ("--inputVcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (disable_fail) then "--disableFail" else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    input_vcf: "Vcf file to check"
    reference: "Reference fasta to check vcf file against"
    disable_fail: "Do not fail on error. The tool will still exit when encountering an error, but will do so with exit code 0"
    validate_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}