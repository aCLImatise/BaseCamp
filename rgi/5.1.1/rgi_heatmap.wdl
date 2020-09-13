version 1.0

task RgiHeatmap {
  input {
    Directory? directory_containing_files
    String? category
    Boolean? frequency
    Int? name_output_eps
    String? cluster
    String? display
    Boolean? debug
  }
  command <<<
    rgi heatmap \
      ~{if defined(directory_containing_files) then ("--input " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(category) then ("--category " +  '"' + category + '"') else ""} \
      ~{if (frequency) then "--frequency" else ""} \
      ~{if defined(name_output_eps) then ("--output " +  '"' + name_output_eps + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    directory_containing_files: "Directory containing the RGI .json files (REQUIRED)"
    category: "The option to organize resistance genes based on a\\ncategory."
    frequency: "Represent samples based on resistance profile."
    name_output_eps: "Name for the output EPS and PNG files. The number of\\nfiles run will automatically be appended to the end of\\nthe file name. (default=RGI_heatmap)"
    cluster: "Option to use SciPy's hiearchical clustering algorithm\\nto cluster rows (AMR genes) or columns (samples)."
    display: "Specify display options for categories\\n(deafult=plain)."
    debug: "debug mode"
  }
  output {
    File out_stdout = stdout()
  }
}