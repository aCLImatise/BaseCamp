version 1.0

task RunTippTool.py {
  input {
    String? gene
    String? action
    String? output_directory
    String? prefix
    String? input_destination
    String? threshold
  }
  command <<<
    run_tipp_tool.py \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(input_destination) then ("--input " +  '"' + input_destination + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    gene: "use GENE's reference package"
    action: "Run ACTION"
    output_directory: "OUTPUT directory"
    prefix: "PREFIX"
    input_destination: "INPUT destination"
    threshold: "threshold for classification"
  }
}