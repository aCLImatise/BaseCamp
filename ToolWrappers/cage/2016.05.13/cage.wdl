version 1.0

task Cage {
  input {
    File? output_vcf
    File? input_snp_db
    Boolean? verbose
  }
  command <<<
    cage \
      ~{if defined(output_vcf) then ("--output_vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(input_snp_db) then ("--input_SNP_db " +  '"' + input_snp_db + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_vcf: "(OR required)  File to output variants called when running CAGe\\n-- OR --"
    input_snp_db: "(OR required)  Filename of sqlite3 SNP database"
    verbose: "print verbose output of CAGe"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf = "${in_output_vcf}"
  }
}