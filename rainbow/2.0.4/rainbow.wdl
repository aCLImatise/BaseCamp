version 1.0

task Rainbow {
  input {
    String? input_fastafastq_file_supports_multiple
    String? input_fastafastq_file_supports_multiple_
    Int? read_default_variable
    Int? maximum_mismatches
    Int? exactly_matching_threshold
    Boolean? low_level_polymorphism
    String? input_rbasm_output
    Boolean? output_assembly
    String? output_file_line
    Int? maximum_number_merge
    Float? minimum_fraction_valid
    Int? minimum_number_opened
    Int? maximum_number_opened
    String cmd
  }
  command <<<
    rainbow \
      ~{cmd} \
      ~{if defined(input_fastafastq_file_supports_multiple) then ("-1 " +  '"' + input_fastafastq_file_supports_multiple + '"') else ""} \
      ~{if defined(input_fastafastq_file_supports_multiple_) then ("-2 " +  '"' + input_fastafastq_file_supports_multiple_ + '"') else ""} \
      ~{if defined(read_default_variable) then ("-l " +  '"' + read_default_variable + '"') else ""} \
      ~{if defined(maximum_mismatches) then ("-m " +  '"' + maximum_mismatches + '"') else ""} \
      ~{if defined(exactly_matching_threshold) then ("-e " +  '"' + exactly_matching_threshold + '"') else ""} \
      ~{true="-L" false="" low_level_polymorphism} \
      ~{if defined(input_rbasm_output) then ("-i " +  '"' + input_rbasm_output + '"') else ""} \
      ~{true="-a" false="" output_assembly} \
      ~{if defined(output_file_line) then ("-o " +  '"' + output_file_line + '"') else ""} \
      ~{if defined(maximum_number_merge) then ("-N " +  '"' + maximum_number_merge + '"') else ""} \
      ~{if defined(minimum_fraction_valid) then ("-f " +  '"' + minimum_fraction_valid + '"') else ""} \
      ~{if defined(minimum_number_opened) then ("-r " +  '"' + minimum_number_opened + '"') else ""} \
      ~{if defined(maximum_number_opened) then ("-R " +  '"' + maximum_number_opened + '"') else ""}
  >>>
  parameter_meta {
    input_fastafastq_file_supports_multiple: "Input fasta/fastq file, supports multiple '-1'"
    input_fastafastq_file_supports_multiple_: "Input fasta/fastq file, supports multiple '-2' [null]"
    read_default_variable: "Read length, default: 0 variable"
    maximum_mismatches: "Maximum mismatches [4]"
    exactly_matching_threshold: "Exactly matching threshold [2000]"
    low_level_polymorphism: "Low level of polymorphism"
    input_rbasm_output: "Input rbasm output file [stdin]"
    output_assembly: "output assembly"
    output_file_line: "Output file for merged contigs, one line per cluster [stdout]"
    maximum_number_merge: "Maximum number of divided clusters to merge [300]"
    minimum_fraction_valid: "Minimum fraction of similarity when assembly (valid only when '-a' is opened) [0.90]"
    minimum_number_opened: "Minimum number of reads to assemble (valid only when '-a' is opened) [5]"
    maximum_number_opened: "Maximum number of reads to assemble (valid only when '-a' is opened) [300]"
    cmd: ""
  }
}