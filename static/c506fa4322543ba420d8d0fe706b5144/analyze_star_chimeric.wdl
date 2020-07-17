version 1.0

task AnalyzeStarChimeric.py {
  input {
    String? input_file_psl
    String? output_psl_file
  }
  command <<<
    analyze_star_chimeric.py \
      ~{if defined(input_file_psl) then ("--input " +  '"' + input_file_psl + '"') else ""} \
      ~{if defined(output_psl_file) then ("--output " +  '"' + output_psl_file + '"') else ""}
  >>>
  parameter_meta {
    input_file_psl: "The input file in PSL format."
    output_psl_file: "The output PSL file containing the contigs with the best alignment which must be unique."
  }
}