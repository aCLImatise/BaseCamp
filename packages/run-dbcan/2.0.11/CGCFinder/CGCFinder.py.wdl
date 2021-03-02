version 1.0

task CGCFinderpy {
  input {
    String? distance
    Boolean? sig_genes
    File? output_file_name
  }
  command <<<
    CGCFinder_py \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if (sig_genes) then "--siggenes" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
  }
  parameter_meta {
    distance: "The distance allowed between two signature genes"
    sig_genes: "{all,tp,tf,stp,tp+tf,tp+stp,tf+stp}, -s {all,tp,tf,stp,tp+tf,tp+stp,tf+stp}\\nSignature genes types required. all=CAZymes,TC,TF;\\ntp=CAZymes,TC; tf=CAZymes,TF"
    output_file_name: "Output file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}