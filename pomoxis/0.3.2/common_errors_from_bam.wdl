version 1.0

task CommonErrorsFromBam {
  input {
    String oO
  }
  command <<<
    common_errors_from_bam \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}