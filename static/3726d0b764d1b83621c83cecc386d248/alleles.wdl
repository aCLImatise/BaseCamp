version 1.0

task Alleles {
  input {
    String? input_file
    Boolean? arg_output_file
    String? gt
    String? sample
  }
  command <<<
    alleles \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input VCF file."
    arg_output_file: "[ --output-file ] arg The output file name (VCF / BCF / VCF.gz)."
    gt: "What GT to write: hemi | het | hom | half | first  for 1 | 0/1 | 1/1 | ./1 | first sample GT; default  is half"
    sample: "(=SAMPLE)   Output sample name"
  }
}