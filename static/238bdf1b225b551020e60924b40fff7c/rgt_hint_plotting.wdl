version 1.0

task RgthintPlotting {
  input {
    File? organism
    File? region_file
    File? bias_table_one
    File? bias_table_two
    File? output_location
    String? output_prefix
  }
  command <<<
    rgt_hint plotting \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(bias_table_one) then ("--bias-table1 " +  '"' + bias_table_one + '"') else ""} \
      ~{if defined(bias_table_two) then ("--bias-table2 " +  '"' + bias_table_two + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism considered on the analysis. Check our full\\ndocumentation for all available options. All default\\nfiles such as genomes will be based on the chosen\\norganism and the data.config file."
    region_file: ",FILE1_R"
    bias_table_one: ",FILE1_R"
    bias_table_two: ",FILE1_R"
    output_location: "Path where the output bias table files will be\\nwritten."
    output_prefix: "The prefix for results files."
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}