version 1.0

task Vcf2wigpl {
  input {
    Int? min_ct
    String input_file_name
    String? cg
  }
  command <<<
    vcf2wig_pl \
      ~{input_file_name} \
      ~{cg} \
      ~{if defined(min_ct) then ("--minCT " +  '"' + min_ct + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_ct: ": minimum number of CT reads, otherwise, methy column will be '.' (default: 1)"
    input_file_name: ""
    cg: ""
  }
  output {
    File out_stdout = stdout()
  }
}