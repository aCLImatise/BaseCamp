version 1.0

task PredexComparison {
  input {
    String? design
    String? column
    Directory? output_directory_default
  }
  command <<<
    predex comparison \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0"
  }
  parameter_meta {
    design: "Design matrix with sample data"
    column: "Column name to make comparisons with"
    output_directory_default: "Output directory (default = current)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}