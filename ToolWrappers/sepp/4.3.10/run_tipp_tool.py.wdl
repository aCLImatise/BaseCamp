version 1.0

task RunTippToolpy {
  input {
    String? gene
    String? action
    Directory? output_directory
    String? var_3
    String? threshold
    String i_input_input
  }
  command <<<
    run_tipp_tool_py \
      ~{i_input_input} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(var_3) then ("--prefix " +  '"' + var_3 + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    gene: "use GENE's reference package"
    action: "Run ACTION"
    output_directory: "OUTPUT directory"
    var_3: ""
    threshold: "threshold for classification\\n"
    i_input_input: "-i INPUT, --input INPUT"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}