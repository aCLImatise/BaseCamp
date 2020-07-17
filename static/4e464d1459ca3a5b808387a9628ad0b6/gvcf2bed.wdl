version 1.0

task Gvcf2bed {
  input {
    String? input_file
    Boolean? arg_output_file
    Boolean? arg_fasta_file
    Boolean? arg_optional_bed
  }
  command <<<
    gvcf2bed \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-r" false="" arg_fasta_file} \
      ~{true="-T" false="" arg_optional_bed}
  >>>
  parameter_meta {
    input_file: "The input file"
    arg_output_file: "[ --output-file ] arg   The output file name (BED Format)."
    arg_fasta_file: "[ --reference ] arg     Reference fasta file."
    arg_optional_bed: "[ --target-region ] arg Optional bed file with target regions"
  }
}