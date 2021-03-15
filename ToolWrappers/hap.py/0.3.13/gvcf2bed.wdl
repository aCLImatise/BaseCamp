version 1.0

task Gvcf2bed {
  input {
    File? input_file
    File? arg_output_file
    Boolean? arg_reference_fasta
    Boolean? arg_optional_bed
  }
  command <<<
    gvcf2bed \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_optional_bed) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0"
  }
  parameter_meta {
    input_file: "The input file"
    arg_output_file: "[ --output-file ] arg   The output file name (BED Format)."
    arg_reference_fasta: "[ --reference ] arg     Reference fasta file."
    arg_optional_bed: "[ --target-region ] arg Optional bed file with target regions"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}