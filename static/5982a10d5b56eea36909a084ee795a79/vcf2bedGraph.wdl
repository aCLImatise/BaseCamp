version 1.0

task Vcf2bedGraph.pl {
  input {
    Int? sample_order
    Int? min_ct
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bedGraph.pl \
      ~{input_file_name} \
      ~{cg} \
      ~{if defined(sample_order) then ("--sample_order " +  '"' + sample_order + '"') else ""} \
      ~{if defined(min_ct) then ("--minCT " +  '"' + min_ct + '"') else ""}
  >>>
  parameter_meta {
    sample_order: ": sample order choose to output as bed file when there are multiple samples in the same vcf file. 1 means the first sample (default: 1)"
    min_ct: ": minimum number of CT reads, otherwise, methy column will be '.' (default: 1)"
    input_file_name: ""
    cg: ""
  }
}