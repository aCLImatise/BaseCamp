version 1.0

task Cage {
  input {
    File? _outputvcf_vcfoutputfileor
    File? _inputsnpdb_snpinputdbor
    Boolean? _verboseprint_verbose
  }
  command <<<
    cage \
      ~{if defined(_outputvcf_vcfoutputfileor) then ("-o " +  '"' + _outputvcf_vcfoutputfileor + '"') else ""} \
      ~{if defined(_inputsnpdb_snpinputdbor) then ("-s " +  '"' + _inputsnpdb_snpinputdbor + '"') else ""} \
      ~{if (_verboseprint_verbose) then "-v" else ""}
  >>>
  parameter_meta {
    _outputvcf_vcfoutputfileor: ",  --output_vcf <VCF_output_file>\\n(OR required)  File to output variants called when running CAGe\\n-- OR --"
    _inputsnpdb_snpinputdbor: ",  --input_SNP_db <SNP_input_db>\\n(OR required)  Filename of sqlite3 SNP database"
    _verboseprint_verbose: ",  --verbose\\nprint verbose output of CAGe"
  }
  output {
    File out_stdout = stdout()
    File out__outputvcf_vcfoutputfileor = "${in__outputvcf_vcfoutputfileor}"
  }
}