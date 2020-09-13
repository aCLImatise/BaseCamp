version 1.0

task CountRead {
  input {
    String? normalized_data_case
    String? normalized_data_control
    File? output_file_default
    String? chrom
    String region_file
  }
  command <<<
    countRead \
      ~{region_file} \
      ~{if defined(normalized_data_case) then ("-t " +  '"' + normalized_data_case + '"') else ""} \
      ~{if defined(normalized_data_control) then ("-c " +  '"' + normalized_data_control + '"') else ""} \
      ~{if defined(output_file_default) then ("-o " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""}
  >>>
  parameter_meta {
    normalized_data_case: ": the normalized data for the case genome; This is is an required option"
    normalized_data_control: ": the normalized data for the control genome; This is optional."
    output_file_default: ": the output file; Default is <stdout>"
    chrom: ": the chromosome name"
    region_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}