version 1.0

task PhenixpyVcf2json {
  input {
    File? path_vcf_file
    File? output_file_prefix
    Boolean? no_zip
    Boolean? vcf_is_filtered
    Boolean? summary_info
  }
  command <<<
    phenix_py vcf2json \
      ~{if defined(path_vcf_file) then ("--input " +  '"' + path_vcf_file + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if (no_zip) then "--nozip" else ""} \
      ~{if (vcf_is_filtered) then "--vcf_is_filtered" else ""} \
      ~{if (summary_info) then "--summary_info" else ""}
  >>>
  parameter_meta {
    path_vcf_file: "path to a VCF file"
    output_file_prefix: "Path to the json output file (without file extension).\\nDefault: sample_name"
    no_zip: "Do not gzip json when writing file. (default: Yes,\\ngzip it.)"
    vcf_is_filtered: "Required: Confirm that the input vcf is filtered. It\\nis stronglyrecommended to filter the file with Phenix\\nusing the sameparameters that are used throughout the\\ndatabase this jason file is meant for."
    summary_info: "Print summary of the json string"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}