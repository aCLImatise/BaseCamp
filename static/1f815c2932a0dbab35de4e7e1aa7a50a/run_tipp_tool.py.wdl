version 1.0

task RunTippToolpy {
  input {
    String? gene
    String? action
    Directory? output_directory
    String? threshold
    String? p
    String prefix
  }
  command <<<
    run_tipp_tool_py \
      ~{prefix} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene: "use GENE's reference package"
    action: "Run ACTION"
    output_directory: "OUTPUT directory"
    threshold: "threshold for classification\\n"
    p: ""
    prefix: "-i INPUT, --input INPUT"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}