version 1.0

task Alleles {
  input {
    File? input_file
    File? arg_output_file
    Int? gt
    String? sample
  }
  command <<<
    alleles \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input VCF file."
    arg_output_file: "[ --output-file ] arg The output file name (VCF / BCF / VCF.gz)."
    gt: "What GT to write: hemi | het | hom | half | first\\nfor 1 | 0/1 | 1/1 | ./1 | first sample GT; default\\nis half"
    sample: "(=SAMPLE)   Output sample name"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}