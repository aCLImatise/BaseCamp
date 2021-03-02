version 1.0

task PredexComparison {
  input {
    String? design
    String? column
    Directory? output_directory
  }
  command <<<
    predex comparison \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.2--pyh3252c3a_0"
  }
  parameter_meta {
    design: "Design matrix with sample data"
    column: "Column name to make comparisons with"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}