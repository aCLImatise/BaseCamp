version 1.0

task OncogeminiRegion {
  input {
    String? reg
    String? gene
    Boolean? header
    String? columns
    String? filter
    Boolean? show_samples
    String variant_dot
  }
  command <<<
    oncogemini region \
      ~{variant_dot} \
      ~{if defined(reg) then ("--reg " +  '"' + reg + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (show_samples) then "--show-samples" else ""}
  >>>
  parameter_meta {
    reg: "Specify a chromosomal region chr:start-end"
    gene: "Specify a gene of interest"
    header: "Add a header of column names to the output."
    columns: "A list of columns that you would like returned. Def. = \\\"*\\\""
    filter: "Restrictions to apply to variants (SQL syntax)"
    show_samples: "Add a column of all sample names with a variant to each"
    variant_dot: "--format FORMAT   Format of output (JSON, TPED or default)"
  }
  output {
    File out_stdout = stdout()
  }
}