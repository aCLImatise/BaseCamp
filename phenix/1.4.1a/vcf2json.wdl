version 1.0

task Vcf2json.py {
  input {
    String? path_vcf_file
    String? output_file_prefix
    Boolean? no_zip
    Boolean? vcf_is_filtered
    Boolean? summary_info
  }
  command <<<
    vcf2json.py \
      ~{if defined(path_vcf_file) then ("--input " +  '"' + path_vcf_file + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{true="--nozip" false="" no_zip} \
      ~{true="--vcf_is_filtered" false="" vcf_is_filtered} \
      ~{true="--summary_info" false="" summary_info}
  >>>
  parameter_meta {
    path_vcf_file: "path to a VCF file"
    output_file_prefix: "Path to the json output file (without file extension). Default: sample_name"
    no_zip: "Do not gzip json when writing file. (default: Yes, gzip it.)"
    vcf_is_filtered: "Required: Confirm that the input vcf is filtered. It is stronglyrecommended to filter the file with Phenix using the sameparameters that are used throughout the database this jason file is meant for."
    summary_info: "Print summary of the json string"
  }
}