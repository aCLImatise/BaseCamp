version 1.0

task Vcf2bedGraphpl {
  input {
    File? sample_order
    Int? min_ct
    String input_file_name
    String? cg
  }
  command <<<
    vcf2bedGraph_pl \
      ~{input_file_name} \
      ~{cg} \
      ~{if defined(sample_order) then ("--sample_order " +  '"' + sample_order + '"') else ""} \
      ~{if defined(min_ct) then ("--minCT " +  '"' + min_ct + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_order: ": sample order choose to output as bed file when there are multiple samples in the same vcf file. 1 means the first sample (default: 1)"
    min_ct: ": minimum number of CT reads, otherwise, methy column will be '.' (default: 1)"
    input_file_name: ""
    cg: ""
  }
  output {
    File out_stdout = stdout()
    File out_sample_order = "${in_sample_order}"
  }
}